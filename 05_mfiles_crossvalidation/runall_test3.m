function [] = runall_test3(FOLDIDX)
% this function will run all the data in the 05_mfiles_softdata folder

% load BME
cd ../BMELIB2.0b
startup();
cd ../05_mfiles_crossvalidation

% calculate the spatial 10 fold cross validation 
% getXvalidation_10fold_test3(1,0,1,FOLDIDX);
getXvalforcedisolation_10fold_test3(1,0,1,500000,FOLDIDX);

end