function [] = tableCMAQRAMP_testing()
% this function will create tables from all the values created in
% stratCMAQRAMP.m

% load info
load('stratCMAQRAMP_testing.mat');

% header string
statstr = {'ME';'SE';'ME2';'SE2';'MSE';'R';'R2';'RMSE';'MNE';'NME';'MAE';'MNAE';'NMAE';'MS';'VS';'RMSS';'MR';'MSNS'};

% overall
col1 = [ME_cmaq,SE_cmaq,ME2_cmaq,SE2_cmaq,MSE_cmaq,R_cmaq, ...
    R2_cmaq,RMSE_cmaq,MNE_cmaq,NME_cmaq,MAE_cmaq,MNAE_cmaq,NMAE_cmaq,ME_cmaq2,SE2_cmaq2,RMSS_cmaq,MR_cmaq,MSNS_cmaq];
col2 = [ME_con,SE_con,ME2_con,SE2_con,MSE_con,R_con, ...
    R2_con,RMSE_con,MNE_con,NME_con,MAE_con,MNAE_con,NMAE_con,ME_con2,SE2_con2,RMSS_con,MR_con,MSNS_con];
col3 = [ME_camp,SE_camp,ME2_camp,SE2_camp,MSE_camp,R_camp, ...
    R2_camp,RMSE_camp,MNE_camp,NME_camp,MAE_camp,MNAE_camp,NMAE_camp,ME_camp2,SE2_camp2,RMSS_camp,MR_camp,MSNS_camp];
col4 = [ME_ramp,SE_ramp,ME2_ramp,SE2_ramp,MSE_ramp,R_ramp, ...
    R2_ramp,RMSE_ramp,MNE_ramp,NME_ramp,MAE_ramp,MNAE_ramp,NMAE_ramp,ME_ramp2,SE2_ramp2,RMSS_ramp,MR_ramp,MSNS_ramp];
fileID = fopen('tables/overall_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s\n','statistic','CMAQ','Constant','CAMP','RAMP');
for i = 1:length(statstr)
    fprintf(fileID,'%s,%f,%f,%f,%f\n',statstr{i},col1(i),col2(i),col3(i),col4(i));
end
fclose(fileID);

% season a
col1 = [ME_cmaq_season';SE_cmaq_season';ME2_cmaq_season';SE2_cmaq_season';MSE_cmaq_season';R_cmaq_season'; ...
    R2_cmaq_season';RMSE_cmaq_season';MNE_cmaq_season';NME_cmaq_season';MAE_cmaq_season';MNAE_cmaq_season';NMAE_cmaq_season';ME_cmaq2_season';SE2_cmaq2_season';RMSS_cmaq_season';MR_cmaq_season'];
col2 = [ME_con_season';SE_con_season';ME2_con_season';SE2_con_season';MSE_con_season';R_con_season'; ...
    R2_con_season';RMSE_con_season';MNE_con_season';NME_con_season';MAE_con_season';MNAE_con_season';NMAE_con_season';ME_con2_season';SE2_con2_season';RMSS_con_season';MR_con_season'];
col3 = [ME_conS_season';SE_conS_season';ME2_conS_season';SE2_conS_season';MSE_conS_season';R_conS_season'; ...
    R2_conS_season';RMSE_conS_season';MNE_conS_season';NME_conS_season';MAE_conS_season';MNAE_conS_season';NMAE_conS_season';ME_conS2_season';SE2_conS2_season';RMSS_conS_season';MR_conS_season'];
col4 = [ME_camp_season';SE_camp_season';ME2_camp_season';SE2_camp_season';MSE_camp_season';R_camp_season'; ...
    R2_camp_season';RMSE_camp_season';MNE_camp_season';NME_camp_season';MAE_camp_season';MNAE_camp_season';NMAE_camp_season';ME_camp2_season';SE2_camp2_season';RMSS_camp_season';MR_camp_season'];
col5 = [ME_campS_season';SE_campS_season';ME2_campS_season';SE2_campS_season';MSE_campS_season';R_campS_season'; ...
    R2_campS_season';RMSE_campS_season';MNE_campS_season';NME_campS_season';MAE_campS_season';MNAE_campS_season';NMAE_campS_season';ME_campS2_season';SE2_campS2_season';RMSS_campS_season';MR_campS_season'];
col6 = [ME_ramp_season';SE_ramp_season';ME2_ramp_season';SE2_ramp_season';MSE_ramp_season';R_ramp_season'; ...
    R2_ramp_season';RMSE_ramp_season';MNE_ramp_season';NME_ramp_season';MAE_ramp_season';MNAE_ramp_season';NMAE_ramp_season';ME_ramp2_season';SE2_ramp2_season';RMSS_ramp_season';MR_ramp_season'];
fileID = fopen('tables/season_a_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n', ...
    '','CMAQ','CMAQ','CMAQ','CMAQ','Constant','Constant','Constant','Constant', ...
    'Constant season','Constant season','Constant season','Constant season','CAMP','CAMP','CAMP','CAMP', ...
    'CAMP season','CAMP season','CAMP season','CAMP season','RAMP','RAMP','RAMP','RAMP');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    season_str{1},season_str{2},season_str{3},season_str{4}, ...
    season_str{1},season_str{2},season_str{3},season_str{4}, ...
    season_str{1},season_str{2},season_str{3},season_str{4}, ...
    season_str{1},season_str{2},season_str{3},season_str{4}, ...
    season_str{1},season_str{2},season_str{3},season_str{4}, ...
    season_str{1},season_str{2},season_str{3},season_str{4});
for i = 1:length(statstr)
    fprintf(fileID,'%s,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f\n', ...
        statstr{i},col1(i,:),col2(i,:),col3(i,:),col4(i,:),col5(i,:),col6(i,:));
end
fclose(fileID);

% season b
col1 = [ME_cmaq_season';SE_cmaq_season';ME2_cmaq_season';SE2_cmaq_season';MSE_cmaq_season';R_cmaq_season'; ...
    R2_cmaq_season';RMSE_cmaq_season';MNE_cmaq_season';NME_cmaq_season';MAE_cmaq_season';MNAE_cmaq_season';NMAE_cmaq_season';ME_cmaq2_season';SE2_cmaq2_season';RMSS_cmaq_season';MR_cmaq_season'];
col2 = [ME_con_season';SE_con_season';ME2_con_season';SE2_con_season';MSE_con_season';R_con_season'; ...
    R2_con_season';RMSE_con_season';MNE_con_season';NME_con_season';MAE_con_season';MNAE_con_season';NMAE_con_season';ME_con2_season';SE2_con2_season';RMSS_con_season';MR_con_season'];
col3 = [ME_conS_season';SE_conS_season';ME2_conS_season';SE2_conS_season';MSE_conS_season';R_conS_season'; ...
    R2_conS_season';RMSE_conS_season';MNE_conS_season';NME_conS_season';MAE_conS_season';MNAE_conS_season';NMAE_conS_season';ME_conS2_season';SE2_conS2_season';RMSS_conS_season';MR_conS_season'];
col4 = [ME_camp_season';SE_camp_season';ME2_camp_season';SE2_camp_season';MSE_camp_season';R_camp_season'; ...
    R2_camp_season';RMSE_camp_season';MNE_camp_season';NME_camp_season';MAE_camp_season';MNAE_camp_season';NMAE_camp_season';ME_camp2_season';SE2_camp2_season';RMSS_camp_season';MR_camp_season'];
col5 = [ME_campS_season';SE_campS_season';ME2_campS_season';SE2_campS_season';MSE_campS_season';R_campS_season'; ...
    R2_campS_season';RMSE_campS_season';MNE_campS_season';NME_campS_season';MAE_campS_season';MNAE_campS_season';NMAE_campS_season';ME_campS2_season';SE2_campS2_season';RMSS_campS_season';MR_campS_season'];
col6 = [ME_ramp_season';SE_ramp_season';ME2_ramp_season';SE2_ramp_season';MSE_ramp_season';R_ramp_season'; ...
    R2_ramp_season';RMSE_ramp_season';MNE_ramp_season';NME_ramp_season';MAE_ramp_season';MNAE_ramp_season';NMAE_ramp_season';ME_ramp2_season';SE2_ramp2_season';RMSS_ramp_season';MR_ramp_season'];
fileID = fopen('tables/season_b_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','', ...
    season_str{1},season_str{1},season_str{1},season_str{1},season_str{1},season_str{1}, ...
    season_str{2},season_str{2},season_str{2},season_str{2},season_str{2},season_str{2}, ...
    season_str{3},season_str{3},season_str{3},season_str{3},season_str{3},season_str{3}, ...
    season_str{4},season_str{4},season_str{4},season_str{4},season_str{4},season_str{4});
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    'CMAQ','Constant','Constant season','CAMP','CAMP season','RAMP', ...
    'CMAQ','Constant','Constant season','CAMP','CAMP season','RAMP', ...
    'CMAQ','Constant','Constant season','CAMP','CAMP season','RAMP', ...
    'CMAQ','Constant','Constant season','CAMP','CAMP season','RAMP');
for i = 1:length(statstr)
    fprintf(fileID,'%s,',statstr{i});
    for j = 1:length(season_str)
        fprintf(fileID,'%f,%f,%f,%f,%f,%f,',col1(i,j),col2(i,j),col3(i,j),col4(i,j),col5(i,j),col6(i,j));
    end
    fprintf(fileID,'\n');
end
fclose(fileID);

% network a
col1 = [ME_cmaq_network';SE_cmaq_network';ME2_cmaq_network';SE2_cmaq_network';MSE_cmaq_network';R_cmaq_network'; ...
    R2_cmaq_network';RMSE_cmaq_network';MNE_cmaq_network';NME_cmaq_network';MAE_cmaq_network';MNAE_cmaq_network';NMAE_cmaq_network';ME_cmaq2_network';SE2_cmaq2_network';RMSS_cmaq_network';MR_cmaq_network'];
col2 = [ME_con_network';SE_con_network';ME2_con_network';SE2_con_network';MSE_con_network';R_con_network'; ...
    R2_con_network';RMSE_con_network';MNE_con_network';NME_con_network';MAE_con_network';MNAE_con_network';NMAE_con_network';ME_con2_network';SE2_con2_network';RMSS_con_network';MR_con_network'];
col3 = [ME_camp_network';SE_camp_network';ME2_camp_network';SE2_camp_network';MSE_camp_network';R_camp_network'; ...
    R2_camp_network';RMSE_camp_network';MNE_camp_network';NME_camp_network';MAE_camp_network';MNAE_camp_network';NMAE_camp_network';ME_camp2_network';SE2_camp2_network';RMSS_camp_network';MR_camp_network'];
col4 = [ME_ramp_network';SE_ramp_network';ME2_ramp_network';SE2_ramp_network';MSE_ramp_network';R_ramp_network'; ...
    R2_ramp_network';RMSE_ramp_network';MNE_ramp_network';NME_ramp_network';MAE_ramp_network';MNAE_ramp_network';NMAE_ramp_network';ME_ramp2_network';SE2_ramp2_network';RMSS_ramp_network';MR_ramp_network'];
fileID = fopen('tables/network_a_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n', ...
    '','CMAQ','CMAQ','CMAQ','Constant','Contant','Constant','CAMP','CAMP','CAMP','RAMP','RAMP','RAMP');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    network_str{1},network_str{2},network_str{3}, ...
    network_str{1},network_str{2},network_str{3}, ...
    network_str{1},network_str{2},network_str{3}, ...
    network_str{1},network_str{2},network_str{3});
for i = 1:length(statstr)
    fprintf(fileID,'%s,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f\n',statstr{i},col1(i,:),col2(i,:),col3(i,:),col4(i,:));
end
fclose(fileID);

% network b
col1 = [ME_cmaq_network';SE_cmaq_network';ME2_cmaq_network';SE2_cmaq_network';MSE_cmaq_network';R_cmaq_network'; ...
    R2_cmaq_network';RMSE_cmaq_network';MNE_cmaq_network';NME_cmaq_network';MAE_cmaq_network';MNAE_cmaq_network';NMAE_cmaq_network';ME_cmaq2_network';SE2_cmaq2_network';RMSS_cmaq_network';MR_cmaq_network'];
col2 = [ME_con_network';SE_con_network';ME2_con_network';SE2_con_network';MSE_con_network';R_con_network'; ...
    R2_con_network';RMSE_con_network';MNE_con_network';NME_con_network';MAE_con_network';MNAE_con_network';NMAE_con_network';ME_con2_network';SE2_con2_network';RMSS_con_network';MR_con_network'];
col3 = [ME_camp_network';SE_camp_network';ME2_camp_network';SE2_camp_network';MSE_camp_network';R_camp_network'; ...
    R2_camp_network';RMSE_camp_network';MNE_camp_network';NME_camp_network';MAE_camp_network';MNAE_camp_network';NMAE_camp_network';ME_camp2_network';SE2_camp2_network';RMSS_camp_network';MR_camp_network'];
col4 = [ME_ramp_network';SE_ramp_network';ME2_ramp_network';SE2_ramp_network';MSE_ramp_network';R_ramp_network'; ...
    R2_ramp_network';RMSE_ramp_network';MNE_ramp_network';NME_ramp_network';MAE_ramp_network';MNAE_ramp_network';NMAE_ramp_network';ME_ramp2_network';SE2_ramp2_network';RMSS_ramp_network';MR_ramp_network'];
fileID = fopen('tables/network_b_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','', ...
    network_str{1},network_str{1},network_str{1},network_str{1}, ...
    network_str{2},network_str{2},network_str{2},network_str{2}, ...
    network_str{3},network_str{3},network_str{3},network_str{3});
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    'CMAQ','Constant','CAMP','RAMP','CMAQ','Constant','CAMP','RAMP','CMAQ','Constant','CAMP','RAMP');
for i = 1:length(statstr)
    fprintf(fileID,'%s,',statstr{i});
    for j = 1:length(network_str)
        fprintf(fileID,'%f,%f,%f,%f,',col1(i,j),col2(i,j),col3(i,j),col4(i,j));
    end
    fprintf(fileID,'\n');
end
fclose(fileID);

% frm a
col1 = [ME_cmaq_frm';SE_cmaq_frm';ME2_cmaq_frm';SE2_cmaq_frm';MSE_cmaq_frm';R_cmaq_frm'; ...
    R2_cmaq_frm';RMSE_cmaq_frm';MNE_cmaq_frm';NME_cmaq_frm';MAE_cmaq_frm';MNAE_cmaq_frm';NMAE_cmaq_frm';ME_cmaq2_frm';SE2_cmaq2_frm';RMSS_cmaq_frm';MR_cmaq_frm'];
col2 = [ME_con_frm';SE_con_frm';ME2_con_frm';SE2_con_frm';MSE_con_frm';R_con_frm'; ...
    R2_con_frm';RMSE_con_frm';MNE_con_frm';NME_con_frm';MAE_con_frm';MNAE_con_frm';NMAE_con_frm';ME_con2_frm';SE2_con2_frm';RMSS_con_frm';MR_con_frm'];
col3 = [ME_camp_frm';SE_camp_frm';ME2_camp_frm';SE2_camp_frm';MSE_camp_frm';R_camp_frm'; ...
    R2_camp_frm';RMSE_camp_frm';MNE_camp_frm';NME_camp_frm';MAE_camp_frm';MNAE_camp_frm';NMAE_camp_frm';ME_camp2_frm';SE2_camp2_frm';RMSS_camp_frm';MR_camp_frm'];
col4 = [ME_ramp_frm';SE_ramp_frm';ME2_ramp_frm';SE2_ramp_frm';MSE_ramp_frm';R_ramp_frm'; ...
    R2_ramp_frm';RMSE_ramp_frm';MNE_ramp_frm';NME_ramp_frm';MAE_ramp_frm';MNAE_ramp_frm';NMAE_ramp_frm';ME_ramp2_frm';SE2_ramp2_frm';RMSS_ramp_frm';MR_ramp_frm'];
fileID = fopen('tables/frm_a_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s\n','','CMAQ','CMAQ','Constant','Constant','CAMP','CAMP','RAMP','RAMP');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    frm_str{1},frm_str{2},frm_str{1},frm_str{2}, ...
    frm_str{1},frm_str{2},frm_str{1},frm_str{2});
for i = 1:length(statstr)
    fprintf(fileID,'%s,%f,%f,%f,%f,%f,%f,%f,%f\n',statstr{i},col1(i,:),col2(i,:),col3(i,:),col4(i,:));
end
fclose(fileID);

% frm b
col1 = [ME_cmaq_frm';SE_cmaq_frm';ME2_cmaq_frm';SE2_cmaq_frm';MSE_cmaq_frm';R_cmaq_frm'; ...
    R2_cmaq_frm';RMSE_cmaq_frm';MNE_cmaq_frm';NME_cmaq_frm';MAE_cmaq_frm';MNAE_cmaq_frm';NMAE_cmaq_frm';ME_cmaq2_frm';SE2_cmaq2_frm';RMSS_cmaq_frm';MR_cmaq_frm'];
col2 = [ME_con_frm';SE_con_frm';ME2_con_frm';SE2_con_frm';MSE_con_frm';R_con_frm'; ...
    R2_con_frm';RMSE_con_frm';MNE_con_frm';NME_con_frm';MAE_con_frm';MNAE_con_frm';NMAE_con_frm';ME_con2_frm';SE2_con2_frm';RMSS_con_frm';MR_con_frm'];
col3 = [ME_camp_frm';SE_camp_frm';ME2_camp_frm';SE2_camp_frm';MSE_camp_frm';R_camp_frm'; ...
    R2_camp_frm';RMSE_camp_frm';MNE_camp_frm';NME_camp_frm';MAE_camp_frm';MNAE_camp_frm';NMAE_camp_frm';ME_camp2_frm';SE2_camp2_frm';RMSS_camp_frm';MR_camp_frm'];
col4 = [ME_ramp_frm';SE_ramp_frm';ME2_ramp_frm';SE2_ramp_frm';MSE_ramp_frm';R_ramp_frm'; ...
    R2_ramp_frm';RMSE_ramp_frm';MNE_ramp_frm';NME_ramp_frm';MAE_ramp_frm';MNAE_ramp_frm';NMAE_ramp_frm';ME_ramp2_frm';SE2_ramp2_frm';RMSS_ramp_frm';MR_ramp_frm'];
fileID = fopen('tables/frm_b_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s\n','', ...
    frm_str{1},frm_str{1},frm_str{1},frm_str{1},frm_str{2},frm_str{2},frm_str{2},frm_str{2});
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    'CMAQ','Constant','CAMP','RAMP','CMAQ','Constant','CAMP','RAMP');
for i = 1:length(statstr)
    fprintf(fileID,'%s,',statstr{i});
    for j = 1:length(frm_str)
        fprintf(fileID,'%f,%f,%f,%f,',col1(i,j),col2(i,j),col3(i,j),col4(i,j));
    end
    fprintf(fileID,'\n');
end
fclose(fileID);

% west a
col1 = [ME_cmaq_west';SE_cmaq_west';ME2_cmaq_west';SE2_cmaq_west';MSE_cmaq_west';R_cmaq_west'; ...
    R2_cmaq_west';RMSE_cmaq_west';MNE_cmaq_west';NME_cmaq_west';MAE_cmaq_west';MNAE_cmaq_west';NMAE_cmaq_west';ME_cmaq2_west';SE2_cmaq2_west';RMSS_cmaq_west';MR_cmaq_west'];
col2 = [ME_con_west';SE_con_west';ME2_con_west';SE2_con_west';MSE_con_west';R_con_west'; ...
    R2_con_west';RMSE_con_west';MNE_con_west';NME_con_west';MAE_con_west';MNAE_con_west';NMAE_con_west';ME_con2_west';SE2_con2_west';RMSS_con_west';MR_con_west'];
col3 = [ME_camp_west';SE_camp_west';ME2_camp_west';SE2_camp_west';MSE_camp_west';R_camp_west'; ...
    R2_camp_west';RMSE_camp_west';MNE_camp_west';NME_camp_west';MAE_camp_west';MNAE_camp_west';NMAE_camp_west';ME_camp2_west';SE2_camp2_west';RMSS_camp_west';MR_camp_west'];
col4 = [ME_ramp_west';SE_ramp_west';ME2_ramp_west';SE2_ramp_west';MSE_ramp_west';R_ramp_west'; ...
    R2_ramp_west';RMSE_ramp_west';MNE_ramp_west';NME_ramp_west';MAE_ramp_west';MNAE_ramp_west';NMAE_ramp_west';ME_ramp2_west';SE2_ramp2_west';RMSS_ramp_west';MR_ramp_west'];
fileID = fopen('tables/west_a_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s\n','','CMAQ','CMAQ','Constant','Constant','CAMP','CAMP','RAMP','RAMP');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    west_str{1},west_str{2},west_str{1},west_str{2}, ...
    west_str{1},west_str{2},west_str{1},west_str{2});
for i = 1:length(statstr)
    fprintf(fileID,'%s,%f,%f,%f,%f,%f,%f,%f,%f\n',statstr{i},col1(i,:),col2(i,:),col3(i,:),col4(i,:));
end
fclose(fileID);

% west b
col1 = [ME_cmaq_west';SE_cmaq_west';ME2_cmaq_west';SE2_cmaq_west';MSE_cmaq_west';R_cmaq_west'; ...
    R2_cmaq_west';RMSE_cmaq_west';MNE_cmaq_west';NME_cmaq_west';MAE_cmaq_west';MNAE_cmaq_west';NMAE_cmaq_west';ME_cmaq2_west';SE2_cmaq2_west';RMSS_cmaq_west';MR_cmaq_west'];
col2 = [ME_con_west';SE_con_west';ME2_con_west';SE2_con_west';MSE_con_west';R_con_west'; ...
    R2_con_west';RMSE_con_west';MNE_con_west';NME_con_west';MAE_con_west';MNAE_con_west';NMAE_con_west';ME_con2_west';SE2_con2_west';RMSS_con_west';MR_con_west'];
col3 = [ME_camp_west';SE_camp_west';ME2_camp_west';SE2_camp_west';MSE_camp_west';R_camp_west'; ...
    R2_camp_west';RMSE_camp_west';MNE_camp_west';NME_camp_west';MAE_camp_west';MNAE_camp_west';NMAE_camp_west';ME_camp2_west';SE2_camp2_west';RMSS_camp_west';MR_camp_west'];
col4 = [ME_ramp_west';SE_ramp_west';ME2_ramp_west';SE2_ramp_west';MSE_ramp_west';R_ramp_west'; ...
    R2_ramp_west';RMSE_ramp_west';MNE_ramp_west';NME_ramp_west';MAE_ramp_west';MNAE_ramp_west';NMAE_ramp_west';ME_ramp2_west';SE2_ramp2_west';RMSS_ramp_west';MR_ramp_west'];
fileID = fopen('tables/west_b_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s\n','', ...
    west_str{1},west_str{1},west_str{1},west_str{1},west_str{2},west_str{2},west_str{2},west_str{2});
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s\n', ...
    'statistics','CMAQ','Constant','CAMP','RAMP','CMAQ','Constant','CAMP','RAMP');
for i = 1:length(statstr)
    fprintf(fileID,'%s,',statstr{i});
    for j = 1:length(west_str)
        fprintf(fileID,'%f,%f,%f,%f,',col1(i,j),col2(i,j),col3(i,j),col4(i,j));
    end
    fprintf(fileID,'\n');
end
fclose(fileID);

% urban a
col1 = [ME_cmaq_urban';SE_cmaq_urban';ME2_cmaq_urban';SE2_cmaq_urban';MSE_cmaq_urban';R_cmaq_urban'; ...
    R2_cmaq_urban';RMSE_cmaq_urban';MNE_cmaq_urban';NME_cmaq_urban';MAE_cmaq_urban';MNAE_cmaq_urban';NMAE_cmaq_urban';ME_cmaq2_urban';SE2_cmaq2_urban';RMSS_cmaq_urban';MR_cmaq_urban'];
col2 = [ME_con_urban';SE_con_urban';ME2_con_urban';SE2_con_urban';MSE_con_urban';R_con_urban'; ...
    R2_con_urban';RMSE_con_urban';MNE_con_urban';NME_con_urban';MAE_con_urban';MNAE_con_urban';NMAE_con_urban';ME_con2_urban';SE2_con2_urban';RMSS_con_urban';MR_cmaq_urban'];
col3 = [ME_camp_urban';SE_camp_urban';ME2_camp_urban';SE2_camp_urban';MSE_camp_urban';R_camp_urban'; ...
    R2_camp_urban';RMSE_camp_urban';MNE_camp_urban';NME_camp_urban';MAE_camp_urban';MNAE_camp_urban';NMAE_camp_urban';ME_camp2_urban';SE2_camp2_urban';RMSS_camp_urban';MR_camp_urban'];
col4 = [ME_ramp_urban';SE_ramp_urban';ME2_ramp_urban';SE2_ramp_urban';MSE_ramp_urban';R_ramp_urban'; ...
    R2_ramp_urban';RMSE_ramp_urban';MNE_ramp_urban';NME_ramp_urban';MAE_ramp_urban';MNAE_ramp_urban';NMAE_ramp_urban';ME_ramp2_urban';SE2_ramp2_urban';RMSS_ramp_urban';MR_ramp_urban'];
fileID = fopen('tables/urban_a_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','', ...
    'CMAQ','CMAQ','CMAQ','Constant','Constant','Constant','CAMP','CAMP','CAMP','RAMP','RAMP','RAMP');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    urban_str{1},urban_str{2},urban_str{3},urban_str{1},urban_str{2},urban_str{3}, ...
    urban_str{1},urban_str{2},urban_str{3},urban_str{1},urban_str{2},urban_str{3});
for i = 1:length(statstr)
    fprintf(fileID,'%s,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f\n',statstr{i},col1(i,:),col2(i,:),col3(i,:),col4(i,:));
end
fclose(fileID);

% urban b
col1 = [ME_cmaq_urban';SE_cmaq_urban';ME2_cmaq_urban';SE2_cmaq_urban';MSE_cmaq_urban';R_cmaq_urban'; ...
    R2_cmaq_urban';RMSE_cmaq_urban';MNE_cmaq_urban';NME_cmaq_urban';MAE_cmaq_urban';MNAE_cmaq_urban';NMAE_cmaq_urban';ME_cmaq2_urban';SE2_cmaq2_urban';RMSS_cmaq_urban';MR_cmaq_urban'];
col2 = [ME_con_urban';SE_con_urban';ME2_con_urban';SE2_con_urban';MSE_con_urban';R_con_urban'; ...
    R2_con_urban';RMSE_con_urban';MNE_con_urban';NME_con_urban';MAE_con_urban';MNAE_con_urban';NMAE_con_urban';ME_con2_urban';SE2_con2_urban';RMSS_con_urban';MR_cmaq_urban'];
col3 = [ME_camp_urban';SE_camp_urban';ME2_camp_urban';SE2_camp_urban';MSE_camp_urban';R_camp_urban'; ...
    R2_camp_urban';RMSE_camp_urban';MNE_camp_urban';NME_camp_urban';MAE_camp_urban';MNAE_camp_urban';NMAE_camp_urban';ME_camp2_urban';SE2_camp2_urban';RMSS_camp_urban';MR_camp_urban'];
col4 = [ME_ramp_urban';SE_ramp_urban';ME2_ramp_urban';SE2_ramp_urban';MSE_ramp_urban';R_ramp_urban'; ...
    R2_ramp_urban';RMSE_ramp_urban';MNE_ramp_urban';NME_ramp_urban';MAE_ramp_urban';MNAE_ramp_urban';NMAE_ramp_urban';ME_ramp2_urban';SE2_ramp2_urban';RMSS_ramp_urban';MR_ramp_urban'];
fileID = fopen('tables/urban_b_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','', ...
    urban_str{1},urban_str{1},urban_str{1},urban_str{1}, ...
    urban_str{2},urban_str{2},urban_str{2},urban_str{2}, ...
    urban_str{3},urban_str{3},urban_str{3},urban_str{3});
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    'CMAQ','Constant','CAMP','RAMP','CMAQ','Constant','CAMP','RAMP','CMAQ','Constant','CAMP','RAMP');
for i = 1:length(statstr)
    fprintf(fileID,'%s,',statstr{i});
    for j = 1:length(urban_str)
        fprintf(fileID,'%f,%f,%f,%f,',col1(i,j),col2(i,j),col3(i,j),col4(i,j));
    end
    fprintf(fileID,'\n');
end
fclose(fileID);

% region a (?)

% region b (?)

% region 6 a
col1 = [ME_cmaq_region6';SE_cmaq_region6';ME2_cmaq_region6';SE2_cmaq_region6';MSE_cmaq_region6';R_cmaq_region6'; ...
    R2_cmaq_region6';RMSE_cmaq_region6';MNE_cmaq_region6';NME_cmaq_region6';MAE_cmaq_region6';MNAE_cmaq_region6';NMAE_cmaq_region6';ME_cmaq2_region6';SE2_cmaq2_region6';RMSS_cmaq_region6';MR_cmaq_region6'];
col2 = [ME_con_region6';SE_con_region6';ME2_con_region6';SE2_con_region6';MSE_con_region6';R_con_region6'; ...
    R2_con_region6';RMSE_con_region6';MNE_con_region6';NME_con_region6';MAE_con_region6';MNAE_con_region6';NMAE_con_region6';ME_con2_region6';SE2_con2_region6';RMSS_con_region6';MR_con_region6'];
col3 = [ME_con6_region6';SE_con6_region6';ME2_con6_region6';SE2_con6_region6';MSE_con6_region6';R_con6_region6'; ...
    R2_con6_region6';RMSE_con6_region6';MNE_con6_region6';NME_con6_region6';MAE_con6_region6';MNAE_con6_region6';NMAE_con6_region6';ME_con62_region6';SE2_con62_region6';RMSS_con6_region6';MR_con6_region6'];
col4 = [ME_camp_region6';SE_camp_region6';ME2_camp_region6';SE2_camp_region6';MSE_camp_region6';R_camp_region6'; ...
    R2_camp_region6';RMSE_camp_region6';MNE_camp_region6';NME_camp_region6';MAE_camp_region6';MNAE_camp_region6';NMAE_camp_region6';ME_camp2_region6';SE2_camp2_region6';RMSS_camp_region6';MR_camp_region6'];
col5 = [ME_camp6_region6';SE_camp6_region6';ME2_camp6_region6';SE2_camp6_region6';MSE_camp6_region6';R_camp6_region6'; ...
    R2_camp6_region6';RMSE_camp6_region6';MNE_camp6_region6';NME_camp6_region6';MAE_camp6_region6';MNAE_camp6_region6';NMAE_camp6_region6';ME_camp62_region6';SE2_camp62_region6';RMSS_camp6_region6';MR_camp6_region6'];
col6 = [ME_ramp_region6';SE_ramp_region6';ME2_ramp_region6';SE2_ramp_region6';MSE_ramp_region6';R_ramp_region6'; ...
    R2_ramp_region6';RMSE_ramp_region6';MNE_ramp_region6';NME_ramp_region6';MAE_ramp_region6';MNAE_ramp_region6';NMAE_ramp_region6';ME_ramp2_region6';SE2_ramp2_region6';RMSS_ramp_region6';MR_ramp_region6'];
fileID = fopen('tables/region6_a_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n', ...
    '','CMAQ','CMAQ','CMAQ','CMAQ','CMAQ','CMAQ', ...
    'Constant','Constant','Constant','Constant','Constant','Constant', ...
    'Constant region','Constant region','Constant region','Constant region','Constant region','Constant region', ...
    'CAMP','CAMP','CAMP','CAMP','CAMP','CAMP', ...
    'CAMP region','CAMP region','CAMP region','CAMP region','CAMP region','CAMP region', ...
    'RAMP','RAMP','RAMP','RAMP','RAMP','RAMP');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    region6_str{1},region6_str{2},region6_str{3},region6_str{4},region6_str{5},region6_str{6}, ...
    region6_str{1},region6_str{2},region6_str{3},region6_str{4},region6_str{5},region6_str{6}, ...
    region6_str{1},region6_str{2},region6_str{3},region6_str{4},region6_str{5},region6_str{6}, ...
    region6_str{1},region6_str{2},region6_str{3},region6_str{4},region6_str{5},region6_str{6}, ...
    region6_str{1},region6_str{2},region6_str{3},region6_str{4},region6_str{5},region6_str{6}, ...
    region6_str{1},region6_str{2},region6_str{3},region6_str{4},region6_str{5},region6_str{6});
for i = 1:length(statstr)
    fprintf(fileID,'%s,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f\n', ...
        statstr{i},col1(i,:),col2(i,:),col3(i,:),col4(i,:),col5(i,:),col6(i,:));
end
fclose(fileID);

% region 6 b
col1 = [ME_cmaq_region6';SE_cmaq_region6';ME2_cmaq_region6';SE2_cmaq_region6';MSE_cmaq_region6';R_cmaq_region6'; ...
    R2_cmaq_region6';RMSE_cmaq_region6';MNE_cmaq_region6';NME_cmaq_region6';MAE_cmaq_region6';MNAE_cmaq_region6';NMAE_cmaq_region6';ME_cmaq2_region6';SE2_cmaq2_region6';RMSS_cmaq_region6';MR_cmaq_region6'];
col2 = [ME_con_region6';SE_con_region6';ME2_con_region6';SE2_con_region6';MSE_con_region6';R_con_region6'; ...
    R2_con_region6';RMSE_con_region6';MNE_con_region6';NME_con_region6';MAE_con_region6';MNAE_con_region6';NMAE_con_region6';ME_con2_region6';SE2_con2_region6';RMSS_con_region6';MR_con_region6'];
col3 = [ME_con6_region6';SE_con6_region6';ME2_con6_region6';SE2_con6_region6';MSE_con6_region6';R_con6_region6'; ...
    R2_con6_region6';RMSE_con6_region6';MNE_con6_region6';NME_con6_region6';MAE_con6_region6';MNAE_con6_region6';NMAE_con6_region6';ME_con62_region6';SE2_con62_region6';RMSS_con6_region6';MR_con6_region6'];
col4 = [ME_camp_region6';SE_camp_region6';ME2_camp_region6';SE2_camp_region6';MSE_camp_region6';R_camp_region6'; ...
    R2_camp_region6';RMSE_camp_region6';MNE_camp_region6';NME_camp_region6';MAE_camp_region6';MNAE_camp_region6';NMAE_camp_region6';ME_camp2_region6';SE2_camp2_region6';RMSS_camp_region6';MR_camp_region6'];
col5 = [ME_camp6_region6';SE_camp6_region6';ME2_camp6_region6';SE2_camp6_region6';MSE_camp6_region6';R_camp6_region6'; ...
    R2_camp6_region6';RMSE_camp6_region6';MNE_camp6_region6';NME_camp6_region6';MAE_camp6_region6';MNAE_camp6_region6';NMAE_camp6_region6';ME_camp62_region6';SE2_camp62_region6';RMSS_camp6_region6';MR_camp6_region6'];
col6 = [ME_ramp_region6';SE_ramp_region6';ME2_ramp_region6';SE2_ramp_region6';MSE_ramp_region6';R_ramp_region6'; ...
    R2_ramp_region6';RMSE_ramp_region6';MNE_ramp_region6';NME_ramp_region6';MAE_ramp_region6';MNAE_ramp_region6';NMAE_ramp_region6';ME_ramp2_region6';SE2_ramp2_region6';RMSS_ramp_region6';MR_ramp_region6'];
fileID = fopen('tables/region6_b_testing.csv','w+');
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','', ...
    region6_str{1},region6_str{1},region6_str{1},region6_str{1},region6_str{1},region6_str{1}, ...
    region6_str{2},region6_str{2},region6_str{2},region6_str{2},region6_str{2},region6_str{2}, ...
    region6_str{3},region6_str{3},region6_str{3},region6_str{3},region6_str{3},region6_str{3}, ...
    region6_str{4},region6_str{4},region6_str{4},region6_str{4},region6_str{4},region6_str{4}, ...
    region6_str{5},region6_str{5},region6_str{5},region6_str{5},region6_str{5},region6_str{5}, ...
    region6_str{6},region6_str{6},region6_str{6},region6_str{6},region6_str{6},region6_str{6});
fprintf(fileID,'%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n','statistics', ...
    'CMAQ','Constant','Constant region','CAMP','CAMP region','RAMP', ...
    'CMAQ','Constant','Constant region','CAMP','CAMP region','RAMP', ...
    'CMAQ','Constant','Constant region','CAMP','CAMP region','RAMP', ...
    'CMAQ','Constant','Constant region','CAMP','CAMP region','RAMP', ...
    'CMAQ','Constant','Constant region','CAMP','CAMP region','RAMP', ...
    'CMAQ','Constant','Constant region','CAMP','CAMP region','RAMP');
for i = 1:length(statstr)
    fprintf(fileID,'%s,',statstr{i});
    for j = 1:length(region6_str)
        fprintf(fileID,'%f,%f,%f,%f,%f,%f,',col1(i,j),col2(i,j),col3(i,j),col4(i,j),col5(i,j),col6(i,j));
    end
    fprintf(fileID,'\n');
end
fclose(fileID);

% by day across 2001
col1 = [ME_cmaq_day';SE_cmaq_day';ME2_cmaq_day';SE2_cmaq_day';MSE_cmaq_day';R_cmaq_day'; ...
    R2_cmaq_day';RMSE_cmaq_day';MNE_cmaq_day';NME_cmaq_day';MAE_cmaq_day';MNAE_cmaq_day';NMAE_cmaq_day';ME_cmaq2_day';SE2_cmaq2_day';RMSS_cmaq_day';MR_cmaq_day'];
col2 = [ME_con_day';SE_con_day';ME2_con_day';SE2_con_day';MSE_con_day';R_con_day'; ...
    R2_con_day';RMSE_con_day';MNE_con_day';NME_con_day';MAE_con_day';MNAE_con_day';NMAE_con_day';ME_con2_day';SE2_con2_day';RMSS_con_day';MR_con_day'];
col3 = [ME_camp_day';SE_camp_day';ME2_camp_day';SE2_camp_day';MSE_camp_day';R_camp_day'; ...
    R2_camp_day';RMSE_camp_day';MNE_camp_day';NME_camp_day';MAE_camp_day';MNAE_camp_day';NMAE_camp_day';ME_camp2_day';SE2_camp2_day';RMSS_camp_day';MR_camp_day'];
col4 = [ME_ramp_day';SE_ramp_day';ME2_ramp_day';SE2_ramp_day';MSE_ramp_day';R_ramp_day'; ...
    R2_ramp_day';RMSE_ramp_day';MNE_ramp_day';NME_ramp_day';MAE_ramp_day';MNAE_ramp_day';NMAE_ramp_day';ME_ramp2_day';SE2_ramp2_day';RMSS_ramp_day';MR_ramp_day'];
for i = 1:length(statstr)
    
    % plot figure
    figure; hold on;
    plot(uniday,col1(i,:),'b.--',uniday,col2(i,:),'r.--',uniday,col3(i,:),'g.--',uniday,col4(i,:),'c.--');
    legend('CMAQ','Constant','CAMP','RAMP');
    xlabel('days in 2001');
    ylabel(statstr{i});
    title(sprintf('%s for CMAQ, Constant, CAMP, and RAMP for each day in 2001',statstr{i}));
    
    % save figure
    set(gcf,'Position',[0 0 800 600]);
    set(gcf,'PaperUnits','inches');    
    set(gcf,'PaperPosition',[0 0 800 600]./100);
    set(gcf,'PaperPositionMode','manual');
    print(gcf,'-painters','-dpng','-r600',sprintf('figures/daysin2001_%s_testing.png',statstr{i}));
    
end
close all

% distance to nearest monitor
col1 = [ME_cmaq_dist';SE_cmaq_dist';ME2_cmaq_dist';SE2_cmaq_dist';MSE_cmaq_dist';R_cmaq_dist'; ...
    R2_cmaq_dist';RMSE_cmaq_dist';MNE_cmaq_dist';NME_cmaq_dist';MAE_cmaq_dist';MNAE_cmaq_dist';NMAE_cmaq_dist';ME_cmaq2_dist';SE2_cmaq2_dist';RMSS_cmaq_dist';MR_cmaq_dist'];
col2 = [ME_con_dist';SE_con_dist';ME2_con_dist';SE2_con_dist';MSE_con_dist';R_con_dist'; ...
    R2_con_dist';RMSE_con_dist';MNE_con_dist';NME_con_dist';MAE_con_dist';MNAE_con_dist';NMAE_con_dist';ME_con2_dist';SE2_con2_dist';RMSS_con_dist';MR_con_dist'];
col3 = [ME_camp_dist';SE_camp_dist';ME2_camp_dist';SE2_camp_dist';MSE_camp_dist';R_camp_dist'; ...
    R2_camp_dist';RMSE_camp_dist';MNE_camp_dist';NME_camp_dist';MAE_camp_dist';MNAE_camp_dist';NMAE_camp_dist';ME_camp2_dist';SE2_camp2_dist';RMSS_camp_dist';MR_camp_dist'];
col4 = [ME_ramp_dist';SE_ramp_dist';ME2_ramp_dist';SE2_ramp_dist';MSE_ramp_dist';R_ramp_dist'; ...
    R2_ramp_dist';RMSE_ramp_dist';MNE_ramp_dist';NME_ramp_dist';MAE_ramp_dist';MNAE_ramp_dist';NMAE_ramp_dist';ME_ramp2_dist';SE2_ramp2_dist';RMSS_ramp_dist';MR_ramp_dist'];
for i = 1:length(statstr)
    
    % plot figure
    figure; hold on;
    plot(1:10,col1(i,:),'b.--',1:10,col2(i,:),'r.--',1:10,col3(i,:),'g.--',1:10,col4(i,:),'c.--');
    legend('CMAQ','Constant','CAMP','RAMP');
    xlabel('deciles of distance of nearest monitor');
    ylabel(statstr{i});
    title(sprintf('%s for CMAQ, Constant, CAMP, and RAMP for each percentile to nearest monitor',statstr{i}));
    
    % save figure
    set(gcf,'Position',[0 0 800 600]);
    set(gcf,'PaperUnits','inches');    
    set(gcf,'PaperPosition',[0 0 800 600]./100);
    set(gcf,'PaperPositionMode','manual');
    print(gcf,'-painters','-dpng','-r600',sprintf('figures/dist_%s_testing.png',statstr{i}));
    
end
close all

% percentile by obs
col1 = [ME_cmaq_obs';SE_cmaq_obs';ME2_cmaq_obs';SE2_cmaq_obs';MSE_cmaq_obs';R_cmaq_obs'; ...
    R2_cmaq_obs';RMSE_cmaq_obs';MNE_cmaq_obs';NME_cmaq_obs';MAE_cmaq_obs';MNAE_cmaq_obs';NMAE_cmaq_obs';ME_cmaq2_obs';SE2_cmaq2_obs';RMSS_cmaq_obs';MR_cmaq_obs'];
col2 = [ME_con_obs';SE_con_obs';ME2_con_obs';SE2_con_obs';MSE_con_obs';R_con_obs'; ...
    R2_con_obs';RMSE_con_obs';MNE_con_obs';NME_con_obs';MAE_con_obs';MNAE_con_obs';NMAE_con_obs';ME_con2_obs';SE2_con2_obs';RMSS_con_obs';MR_con_obs'];
col3 = [ME_camp_obs';SE_camp_obs';ME2_camp_obs';SE2_camp_obs';MSE_camp_obs';R_camp_obs'; ...
    R2_camp_obs';RMSE_camp_obs';MNE_camp_obs';NME_camp_obs';MAE_camp_obs';MNAE_camp_obs';NMAE_camp_obs';ME_camp2_obs';SE2_camp2_obs';RMSS_camp_obs';MR_camp_obs'];
col4 = [ME_ramp_obs';SE_ramp_obs';ME2_ramp_obs';SE2_ramp_obs';MSE_ramp_obs';R_ramp_obs'; ...
    R2_ramp_obs';RMSE_ramp_obs';MNE_ramp_obs';NME_ramp_obs';MAE_ramp_obs';MNAE_ramp_obs';NMAE_ramp_obs';ME_ramp2_obs';SE2_ramp2_obs';RMSS_ramp_obs';MR_ramp_obs'];
for i = 1:length(statstr)
    
    % plot figure
    figure; hold on;
    plot(1:10,col1(i,:),'b.--',1:10,col2(i,:),'r.--',1:10,col3(i,:),'g.--',1:10,col4(i,:),'c.--');
    legend('CMAQ','Constant','CAMP','RAMP');
    xlabel('deciles of observed values');
    ylabel(statstr{i});
    title(sprintf('%s for CMAQ, Constant, CAMP, and RAMP for each decile of observed values',statstr{i}));
    
    % save figure
    set(gcf,'Position',[0 0 800 600]);
    set(gcf,'PaperUnits','inches');    
    set(gcf,'PaperPosition',[0 0 800 600]./100);
    set(gcf,'PaperPositionMode','manual');
    print(gcf,'-painters','-dpng','-r600',sprintf('figures/obs_%s_testing.png',statstr{i}));
    
end
close all

% percentile by mod
col1 = [ME_cmaq_mod';SE_cmaq_mod';ME2_cmaq_mod';SE2_cmaq_mod';MSE_cmaq_mod';R_cmaq_mod'; ...
    R2_cmaq_mod';RMSE_cmaq_mod';MNE_cmaq_mod';NME_cmaq_mod';MAE_cmaq_mod';MNAE_cmaq_mod';NMAE_cmaq_mod';ME_cmaq2_mod';SE2_cmaq2_mod';RMSS_cmaq_mod';MR_cmaq_mod';];
col2 = [ME_con_mod';SE_con_mod';ME2_con_mod';SE2_con_mod';MSE_con_mod';R_con_mod'; ...
    R2_con_mod';RMSE_con_mod';MNE_con_mod';NME_con_mod';MAE_con_mod';MNAE_con_mod';NMAE_con_mod';ME_con2_mod';SE2_con2_mod';RMSS_con_mod';MR_con_mod';];
col3 = [ME_camp_mod';SE_camp_mod';ME2_camp_mod';SE2_camp_mod';MSE_camp_mod';R_camp_mod'; ...
    R2_camp_mod';RMSE_camp_mod';MNE_camp_mod';NME_camp_mod';MAE_camp_mod';MNAE_camp_mod';NMAE_camp_mod';ME_camp2_mod';SE2_camp2_mod';RMSS_camp_mod';MR_camp_mod'];
col4 = [ME_ramp_mod';SE_ramp_mod';ME2_ramp_mod';SE2_ramp_mod';MSE_ramp_mod';R_ramp_mod'; ...
    R2_ramp_mod';RMSE_ramp_mod';MNE_ramp_mod';NME_ramp_mod';MAE_ramp_mod';MNAE_ramp_mod';NMAE_ramp_mod';ME_ramp2_mod';SE2_ramp2_mod';RMSS_ramp_mod';MR_ramp_mod'];
for i = 1:length(statstr)
    
    % plot figure
    figure; hold on;
    plot(1:10,col1(i,:),'b.--',1:10,col2(i,:),'r.--',1:10,col3(i,:),'g.--',1:10,col4(i,:),'c.--');
    legend('CMAQ','Constant','CAMP','RAMP');
    xlabel('deciles of modeled values');
    ylabel(statstr{i});
    title(sprintf('%s for CMAQ, Constant, CAMP,and RAMP for each decile of modeled values',statstr{i}));
    
    % save figure
    set(gcf,'Position',[0 0 800 600]);
    set(gcf,'PaperUnits','inches');    
    set(gcf,'PaperPosition',[0 0 800 600]./100);
    set(gcf,'PaperPositionMode','manual');
    print(gcf,'-painters','-dpng','-r600',sprintf('figures/mod_%s_testing.png',statstr{i}));
    
end
close all

% percentile by lambda2
col1 = [ME_cmaq_lambda2';SE_cmaq_lambda2';ME2_cmaq_lambda2';SE2_cmaq_lambda2';MSE_cmaq_lambda2';R_cmaq_lambda2'; ...
    R2_cmaq_lambda2';RMSE_cmaq_lambda2';MNE_cmaq_lambda2';NME_cmaq_lambda2';MAE_cmaq_lambda2';MNAE_cmaq_lambda2';NMAE_cmaq_lambda2';ME_cmaq2_lambda2';SE2_cmaq2_lambda2';RMSS_cmaq_lambda2';MR_cmaq_lambda2'];
col2 = [ME_con_lambda2';SE_con_lambda2';ME2_con_lambda2';SE2_con_lambda2';MSE_con_lambda2';R_con_lambda2'; ...
    R2_con_lambda2';RMSE_con_lambda2';MNE_con_lambda2';NME_con_lambda2';MAE_con_lambda2';MNAE_con_lambda2';NMAE_con_lambda2';ME_con2_lambda2';SE2_con2_lambda2';RMSS_con_lambda2';MR_con_lambda2'];
col3 = [ME_camp_lambda2';SE_camp_lambda2';ME2_camp_lambda2';SE2_camp_lambda2';MSE_camp_lambda2';R_camp_lambda2'; ...
    R2_camp_lambda2';RMSE_camp_lambda2';MNE_camp_lambda2';NME_camp_lambda2';MAE_camp_lambda2';MNAE_camp_lambda2';NMAE_camp_lambda2';ME_camp2_lambda2';SE2_camp2_lambda2';RMSS_camp_lambda2';MR_camp_lambda2'];
col4 = [ME_ramp_lambda2';SE_ramp_lambda2';ME2_ramp_lambda2';SE2_ramp_lambda2';MSE_ramp_lambda2';R_ramp_lambda2'; ...
    R2_ramp_lambda2';RMSE_ramp_lambda2';MNE_ramp_lambda2';NME_ramp_lambda2';MAE_ramp_lambda2';MNAE_ramp_lambda2';NMAE_ramp_lambda2';ME_ramp2_lambda2';SE2_ramp2_lambda2';RMSS_ramp_lambda2';MR_ramp_lambda2'];
for i = 1:length(statstr)
    
    % plot figure
    figure; hold on;
    plot(1:10,col1(i,:),'b.--',1:10,col2(i,:),'r.--',1:10,col3(i,:),'g.--',1:10,col4(i,:),'c.--');
    legend('CMAQ','Constant','CAMP','RAMP');
    xlabel('deciles of lambda2 values');
    ylabel(statstr{i});
    title(sprintf('%s for CMAQ, Constant, CAMP, and RAMP for each decile of lambda2 values',statstr{i}));
    
    % save figure
    set(gcf,'Position',[0 0 800 600]);
    set(gcf,'PaperUnits','inches');    
    set(gcf,'PaperPosition',[0 0 800 600]./100);
    set(gcf,'PaperPositionMode','manual');
    print(gcf,'-painters','-dpng','-r600',sprintf('figures/lambda2_%s_testing.png',statstr{i}));
    
end
close all

end