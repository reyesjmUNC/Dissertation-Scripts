function [] = spacetimeRAMP_maps(est_what,mORv)
% this function will create maps at given space/time locations for the
% static DS methods. This will create maps of estimates as well as maps for 
% said parameters

% only use the following if parallel computing is needed
% bsub -x -q day -n 12 -R "span[hosts=1]" /nas02/apps/matlab-2012b/matlab -nodesktop -nosplash -singleCompThread -r "staticDS_maps" -logfile "runall_Cluster12.out"

if nargin < 1, est_what = 1; end % 1=est,2=lambda1,3=lambda2
if nargin < 2, mORv = 1; end % 1=mean,2=variance
if est_what == 1 
    est_what_str = 'est';
elseif est_what == 2
    est_what_str = 'lam1';
elseif est_what == 3;
    est_what_str = 'lam2';
end

% load paired modeled and observed data (years 2001 and 2002 for now)
for i = 2001:2002
    load(sprintf('../matfiles/prepCTMandObs_%d.mat',i));
    Modall{i-2000,1} = Mod; Obsall{i-2000,1} = Obs;
    coordObsall{i-2000,1} = coordObs; cht{i-2000,1} = yrmodaObs;
    load(sprintf('../matfiles/prepCTM_%d.mat',i));
    distCTMvall{i-2000,1} = distCTMv; dailyCTMvall{i-2000,1} = dailyCTMv;
    yrmodaCTMvall{i-2000,1} = yrmodaCTMv;
end
zhm_paired = cell2mat(Modall); zho_paired = cell2mat(Obsall);
ch_paired = cell2mat(coordObsall); cht_paired = cell2mat(cht);
chm_all = cell2mat(distCTMvall); zhm_all = cell2mat(dailyCTMvall);
chtm_all = cell2mat(yrmodaCTMvall);
yrall = floor(cht_paired./10000);
moall = floor((cht_paired - yrall*10000)/100);
daall = cht_paired  - yrall*10000 - moall*100;
cht_paired = datenum(yrall,moall,daall);

% load BME
cd ../BMELIB2.0b
startup();
cd ../12_mfiles_othermethods

% loading data
if est_what == 1, load(sprintf('matdata/estimation_STRAMP_foriso%dkm_timezone.mat',0)); 
else unidates = datenum([repmat(2001,24,1) [1:24]' ones(24,1)]); end
    
% loop through each day
for i = 1:length(unidates)

    if est_what ~= 1 
        % loading lambda info
        temp = datevec(unidates(i));
        load(sprintf('../matfiles/PM2p5_%0.4d%0.2d%0.2d_365_3_150_10_neg0.mat',temp(1),temp(2),temp(3)));
    end
    
    figure; hold on;
    
    load('../09_mfiles_projections/USAcontiguous.mat');
    cd ../09_mfiles_projections
    plotax = ell2lambertcc([x,y],'whiproj2001');
    cd ../12_mfiles_othermethods

    % plotting mean/variance
    if est_what == 1
        if mORv == 1, toplot = zk{i}; else toplot = vk{i}; end
        if mORv == 1, pretoplot = zk; else pretoplot = {vk{i}}; end
        plotlocs = ckall{i};
    else
        plotlocs = CTMlocs;
        if est_what == 2, toplot = meanGivMod(:,1); else toplot = varGivMod(:,1); end
        if est_what == 2, pretoplot = {meanGivMod(:,1)}; else pretoplot = {varGivMod(:,1)}; end
    end

    %%% plotting mean/variance
    lax = [min(plotax(:,1))-100000 max(plotax(:,1))+100000 min(plotax(:,2))-100000 max(plotax(:,2))+100000];
    [xg yg Zg] = plotField(plotlocs,toplot,lax,[plotax(:,1) plotax(:,2)]);
    if est_what == 1 && mORv == 1
        caxis([2 30]); 
    elseif est_what == 1 && mORv == 2
        temp = cell2mat(pretoplot); temp(isnan(temp)) = []; % removing NaNs
        if(isempty(temp)), temp = [0 1]; end
        if prctile(temp,5) == prctile(temp,95)
            caxis([prctile(temp,5)-1 prctile(temp,95)+1]);
        else
            caxis([prctile(temp,5) prctile(temp,95)]);
        end
    elseif est_what == 2
        caxis([0 15]);
    elseif est_what == 3
        caxis([2 40]);
    end    
    colorbar;
    axis([lax(1)+500 lax(2)-10000 lax(3)+500 lax(4)-10000]);

    % setting axis
    set(gca,'XTickLabel',get(gca,'XTick')/1000);
    set(gca,'YTickLabel',get(gca,'YTick')/1000);
    xlabel('km');
    ylabel('km');

    % overlaying the states
    load('../09_mfiles_projections/USAstates5.mat');
    for j = 1:length(X)
        cd ../09_mfiles_projections
        states = ell2lambertcc([X{j},Y{j}],'whiproj2001');
        cd ../12_mfiles_othermethods
        plot(states(:,1),states(:,2),'k-');
    end

    % title 
    if mORv == 1, var_str = ''; else var_str = 'Variance'; end
    if est_what == 1
        title(sprintf('%s space/time RAMP PM_{2.5} (\\mug/m^3) on %s',var_str,datestr(unidates(i))));
    elseif est_what == 2
        title(sprintf('%s space/time RAMP \\lambda_{1} on %s',var_str,datestr(unidates(i))));
    elseif est_what == 3
        title(sprintf('%s space/time RAMP \\lambda_{2} (\\mug/m^3) on %s',var_str,datestr(unidates(i))));
    end

    % save figure 
    if mORv == 1, var_str2 = ''; else var_str2 = 'var_'; end
    set(gcf,'Position',[0 0 800 600]);
    set(gcf,'PaperUnits','inches');    
    set(gcf,'PaperPosition',[0 0 800 600]./100);
    set(gcf,'PaperPositionMode','manual');
    print(gcf,'-painters','-dpng','-r600',sprintf('maps/spacetimeRAMPBME_maps_%s%s%s.png', ...
        var_str2,datestr(unidates(i)),est_what_str));
    
    drawnow;
    frameI = getframe(gcf);
    imI = frame2im(frameI);
    [imindI,cmI] = rgb2ind(imI,256);
    outfileI = sprintf('maps/spacetimeRAMPBME_maps_%s%s.gif',var_str2,est_what_str);
    % On the first loop, create the file. In subsequent loops, append.
    if i == 1
        imwrite(imindI,cmI,outfileI,'gif','DelayTime',1,'loopcount',inf);
    else
        imwrite(imindI,cmI,outfileI,'gif','DelayTime',1,'writemode','append');
    end

    %%% plotting the hard data
    if est_what == 1 & mORv == 1
        % overlay hard data
        idxh = cht_paired == unidates(i);
        Property={'Marker','MarkerSize','MarkerEdgeColor'};
        Value ={'o',6,[0 0 0]};
        cax = [2 30];
        colorplot([ch_paired(idxh,1) ch_paired(idxh,2)],zho_paired(idxh),'jet',Property,Value,cax);

        % save figure
        set(gcf,'Position',[0 0 800 600]);
        set(gcf,'PaperUnits','inches');    
        set(gcf,'PaperPosition',[0 0 800 600]./100);
        set(gcf,'PaperPositionMode','manual');
        print(gcf,'-painters','-dpng','-r600',sprintf('maps/spacetimeRAMPObs_maps_%s%s.png', ...
            datestr(unidates(i)),est_what_str));
        
        drawnow;
        frameII = getframe(gcf);
        imII = frame2im(frameII);
        [imindII,cmII] = rgb2ind(imII,256);
        outfileII = sprintf('maps/spacetimeRAMPObs_maps_%s.gif',est_what_str);
        % On the first loop, create the file. In subsequent loops, append.
        if i == 1
            imwrite(imindII,cmII,outfileII,'gif','DelayTime',1,'loopcount',inf);
        else
            imwrite(imindII,cmII,outfileII,'gif','DelayTime',1,'writemode','append');
        end
        
    end

end

end