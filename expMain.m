%%======������������ز�Ҫ���subID �� sessID ������=====
clear; 
close all
workDir = '/codeDir/in/your/computer';
cd(workDir)

%% Set subject and session info
% You should manually input subject ID and session ID
subName = 'shenhuadong';subID = 4; sessID = 1; 

%% Run BIN train exp: 
% You should mannual change runID for each run
close all;sca;
binMRItrain(subID,sessID,1);

%% Run BIN test exp 
% You should mannual change runID for each run
close all;sca;
binMRItest(subID,sessID,1);

%% Run BIN behavior exp 
% You should mannual change runID for each run
close all;sca;
binMRItrainBehavior(subID,sessID);

