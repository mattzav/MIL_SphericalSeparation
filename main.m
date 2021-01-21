for dataset=11:11
    if dataset == 1
        clear;
        results=fopen('res/results-elephant-2.txt','w');
        output = fopen('res/output-elephant-2.txt','w');
        summary = fopen('res/summary-elephant-2.txt','w');
        load Dataset/elephant.mat;
        dataset = 1;
    elseif dataset == 2
        clear;
        results=fopen('res/results-fox-2.txt','w');
        output = fopen('res/output-fox-2.txt','w');
        summary = fopen('res/summary-fox-2.txt','w');
        load Dataset/fox.mat;
        dataset = 2;
    elseif dataset == 3
        clear;
        results=fopen('res/results-tiger-2.txt','w');
        output = fopen('res/output-tiger-2.txt','w');
        summary = fopen('res/summary-tiger-2.txt','w');
        load Dataset/tiger.mat;
        dataset = 3; 
    elseif dataset == 4
        clear;
        results=fopen('res/results-trec1-2.txt','w');
        output = fopen('res/output-trec1-2.txt','w');
        summary = fopen('res/summary-trec1-2.txt','w');
        load Dataset/trec_1new.mat;
        dataset = 4;   
    elseif dataset == 5
        clear;
        results=fopen('res/results-trec2-2.txt','w');
        output = fopen('res/output-trec2-2.txt','w');
        summary = fopen('res/summary-trec2-2.txt','w');
        load Dataset/trec_2new.mat;
        dataset = 5; 
    elseif dataset == 6
        clear;
        results=fopen('res/results-trec3-1.txt','w');
        output = fopen('res/output-trec3-1.txt','w');
        summary = fopen('res/summary-trec3-1.txt','w');
        load Dataset/trec_3new.mat;
        dataset = 6;  
    elseif dataset == 7
        clear;
        results=fopen('res/results-trec4-2.txt','w');
        output = fopen('res/output-trec4-2.txt','w');
        summary = fopen('res/summary-trec4-2.txt','w');
        load Dataset/trec_4new.mat;
        dataset = 7;   
    elseif dataset == 8
        clear;
        results=fopen('res/results-trec7-2.txt','w');
        output = fopen('res/output-trec7-2.txt','w');
        summary = fopen('res/summary-trec7-2.txt','w');
        load Dataset/trec_7new.mat;
        dataset = 8; 
    elseif dataset == 9
        clear;
        results=fopen('res/results-trec9-2.txt','w');
        output = fopen('res/output-trec9-2.txt','w');
        summary = fopen('res/summary-trec9-2.txt','w');
        load Dataset/trec_9new.mat;
        dataset = 9; 
    elseif dataset == 10
        clear;
        results=fopen('res/results-trec10-2.txt','w');
        output = fopen('res/output-trec10-2.txt','w');
        summary = fopen('res/summary-trec10-2.txt','w');
        load Dataset/trec_10new.mat;
        dataset = 10;
    elseif dataset == 11
        clear;
        results=fopen('res/results-musk1-2.txt','w');
        output = fopen('res/output-musk1-2.txt','w');
        summary = fopen('res/summary-musk1-2.txt','w');
        load Dataset/musk1.mat;
        dataset = 11;   
    elseif dataset == 12
        clear;
        results=fopen('res/results-musk2-3.txt','w');
        output = fopen('res/output-musk2-3.txt','w');
        summary = fopen('res/summary-musk2-3.txt','w');
        load Dataset/musk2.mat;
        dataset = 12;       
    elseif dataset == 13
        clear;
        results=fopen('RL/results-ng1.txt','w');
        output = fopen('RL/output-ng1.txt','w');
        summary = fopen('RL/summary-ng1.txt','w');
        load ng1.mat;
        dataset = 13;   
    elseif dataset == 14
        clear;
        results=fopen('RL/results-ng2.txt','w');
        output = fopen('RL/output-ng2.txt','w');
        summary = fopen('RL/summary-ng2.txt','w');
        load ng2.mat;
        dataset = 14;       
    elseif dataset == 15
        clear;
        results=fopen('RL/results-ng3.txt','w');
        output = fopen('RL/output-ng3.txt','w');
        summary = fopen('RL/summary-ng3.txt','w');
        load ng3.mat;
        dataset = 15;    
     elseif dataset == 16
        clear;
        results=fopen('RL/results-ng4.txt','w');
        output = fopen('RL/output-ng4.txt','w');
        summary = fopen('RL/summary-ng4.txt','w');
        load ng4.mat;
        dataset = 16;       
     elseif dataset == 17
        clear;
        results=fopen('RL/results-ng5.txt','w');
        output = fopen('RL/output-ng5.txt','w');
        summary = fopen('RL/summary-ng5.txt','w');
        load ng5.mat;
        dataset = 17;    
     elseif dataset == 18
        clear;
        results=fopen('RL/results-ng6.txt','w');
        output = fopen('RL/output-ng6.txt','w');
        summary = fopen('RL/summary-ng6.txt','w');
        load ng6.mat;
        dataset = 18;       
     elseif dataset == 19
        clear;
        results=fopen('RL/results-ng7.txt','w');
        output = fopen('RL/output-ng7.txt','w');
        summary = fopen('RL/summary-ng7.txt','w');
        load ng7.mat;
        dataset = 19;       
     elseif dataset == 20
        clear;
        results=fopen('RL/results-ng8.txt','w');
        output = fopen('RL/output-ng8.txt','w');
        summary = fopen('RL/summary-ng8.txt','w');
        load ng8.mat;
        dataset = 20;       
     elseif dataset == 21
        clear;
        results=fopen('RL/results-ng9.txt','w');
        output = fopen('RL/output-ng9.txt','w');
        summary = fopen('RL/summary-ng9.txt','w');
        load ng9.mat;
        dataset = 21;       
     elseif dataset == 22
        clear;
        results=fopen('RL/results-ng10.txt','w');
        output = fopen('RL/output-ng10.txt','w');
        summary = fopen('RL/summary-ng10.txt','w');
        load ng10.mat;
        dataset = 22;       
     elseif dataset == 23
        clear;
        results=fopen('RL/results-ng11.txt','w');
        output = fopen('RL/output-ng11.txt','w');
        summary = fopen('RL/summary-ng11.txt','w');
        load ng11.mat;
        dataset = 23;  
     elseif dataset == 24
        clear;
        results=fopen('RL/results-ng12.txt','w');
        output = fopen('RL/output-ng12.txt','w');
        summary = fopen('RL/summary-ng12.txt','w');
        load ng12.mat;
        dataset = 24;           
     elseif dataset == 25
        clear;
        results=fopen('RL/results-ng13.txt','w');
        output = fopen('RL/output-ng13.txt','w');
        summary = fopen('RL/summary-ng13.txt','w');
        load ng13.mat;
        dataset = 25;           
     elseif dataset == 26
        clear;
        results=fopen('RL/results-ng14.txt','w');
        output = fopen('RL/output-ng14.txt','w');
        summary = fopen('RL/summary-ng14.txt','w');
        load ng14.mat;
        dataset = 26;           
     elseif dataset == 27
        clear;
        results=fopen('RL/results-ng15.txt','w');
        output = fopen('RL/output-ng15.txt','w');
        summary = fopen('RL/summary-ng15.txt','w');
        load ng15.mat;
        dataset = 27;           
     elseif dataset == 28
        clear;
        results=fopen('RL/results-ng16.txt','w');
        output = fopen('RL/output-ng16.txt','w');
        summary = fopen('RL/summary-ng16.txt','w');
        load ng16.mat;
        dataset = 28;           
     elseif dataset == 29
        clear;
        results=fopen('RL/results-ng17.txt','w');
        output = fopen('RL/output-ng17.txt','w');
        summary = fopen('RL/summary-ng17.txt','w');
        load ng17.mat;
        dataset = 29;           
     elseif dataset == 30
        clear;
        results=fopen('RL/results-ng18.txt','w');
        output = fopen('RL/output-ng18.txt','w');
        summary = fopen('RL/summary-ng18.txt','w');
        load ng18.mat;
        dataset = 30;           
     elseif dataset == 31
        clear;
        results=fopen('RL/results-ng19.txt','w');
        output = fopen('RL/output-ng19.txt','w');
        summary = fopen('RL/summary-ng19.txt','w');
        load ng19.mat;
        dataset = 31;           
     elseif dataset == 32
        clear;
        results=fopen('RL/results-ng20.txt','w');
        output = fopen('RL/output-ng20.txt','w');
        summary = fopen('RL/summary-ng20.txt','w');
        load ng20.mat;
        dataset = 32;    
    elseif dataset == 33
        clear;
        results=fopen('RL/results-messidor.txt','w');
        output = fopen('RL/output-messidor.txt','w');
        summary = fopen('RL/summary-messidor.txt','w');
        load messidorReduced.mat;
        dataset = 33;    
    elseif dataset == 34
        clear;
        results=fopen('RL/results-melanomaR5Dep.txt','w');
        output = fopen('RL/output-melanomaR5Dep.txt','w');
        summary = fopen('RL/summary-melanomaR5Dep.txt','w');
        load melanoma3232R5Dep.mat;
        dataset = 34;            
    end
    
    mode = 2;


% fprintf(output,'melanoma32325 \n\n');
% fprintf(summary,'melanoma32325 \n\n');
% fprintf(results,'melanoma32325 \n\n');

% X is the matrix containing in its rows the features%
X = full(features);

% labels(i) is the true label of point i
labels = full(labels);

% bag_ids(i) is the bag to which point i belongs
bag_ids = full(bag_ids);

% numTotalBags is the total number of bags
numTotalBags = max(bag_ids);

% numTotalPoints is the total number of points
% dim is the dimension of the space
[numTotalPoints, dim] = size(X);

% labelsBag(i) is the label of bag i
for i= 1: numTotalBags
    labelsBag(i) = -1;
end

for i=1:numTotalPoints
  if labels(i) == 1
      labelsBag(bag_ids(i)) = 1;
  end
end

% choosing the model selection type 
% mode = 0: no model selection, X = XTrain = Xtest, fix C;
%      = 1: no model selection, fix Xtrain, fix Xtest, fix C;
%      = 2: model selection, fix numberFoldLev1 and numberFoldLev2
%           and the grid of C. In this case FoldLev1 may be fixed
%           also equal to 0.
% mode = 3: requires the input values of C (no model selection) to be put
%           in array bestC;


if mode == 2
    
    [numFoldLev1,sizeIdxLabs] = size(idxLabs);
    numFoldLev2 = 5;
    gridC = [];
    for i=-2:5
        gridC = [gridC; 2^i]; %CONTROLLARE GRIGLIA C
    end
    
    sumCorrectnessTrain = 0.0;
    sumCorrectnessTest = 0.0;
    sumTime = 0.0;
    
    for iFoldLev1 = 1:numFoldLev1
    
        % Xtrain is the matrix of the points of the training set 
        XTrain = [];

        % bag_idsTrain is the part of vector bag_ids corresponding to the training set
        bag_idsTrain = [];
    
        % XTest is the matrix of the points of the testing set 
        XTest = [];

        % bag_idsTest is the part of vector bag_ids corresponding to the testing set
        bag_idsTest = [];
  
        
        for i = 1:numTotalPoints
            %fprintf('CREATING FIRST LEVEL FOLD NUMBER %i...WAIT (imax = %i)...i = %i \n',iFoldLev1,numTotalPoints,i);
            if ismember(bag_ids(i),idxLabs(iFoldLev1,:))
                XTrain = [XTrain; X(i,:)];
                bag_idsTrain = [bag_idsTrain, bag_ids(i)];
            else
                XTest = [XTest; X(i,:)];
                bag_idsTest = [bag_idsTest, bag_ids(i)];
            end
        end
        
    
        % bagsTrain indicates the bags of the training set    
        bagsTrain = idxLabs(iFoldLev1,:);

        % bagsTest indicates the bags of the testing set    
        bagsTest = idxUnls(iFoldLev1,:);

        % model selection
        fprintf('MODEL SELECTION: FOLD %i \n', iFoldLev1);
        fprintf(output,'MODEL SELECTION: FOLD %i \n', iFoldLev1);
        fprintf(summary,'MODEL SELECTION: FOLD %i \n', iFoldLev1);
        
        C = modelSelection(XTrain,idxLabs(iFoldLev1,:),bag_idsTrain,labelsBag,numFoldLev2,gridC,...
            iFoldLev1,output,summary);
        
        fprintf(summary,'LEARNING PHASE (FOLD n. %i), with C = %12.8f \n', iFoldLev1, C);
        fprintf('LEARNING PHASE (FOLD n. %i), with C = %12.8f \n', iFoldLev1, C);
        fprintf(output,'LEARNING PHASE (FOLD n. %i), with C = %12.8f \n', iFoldLev1, C);
        fprintf(results,'LEARNING PHASE (FOLD n. %i), with C = %12.8f \n', iFoldLev1, C);
        tic();
        [x0, z] = SP_MIL(C,XTrain,bagsTrain,bag_idsTrain,labelsBag,output,summary);
        timeFold = toc();
        print = false;
        correctnessPercentageTrain = correctness(XTrain,idxLabs(iFoldLev1,:),bag_idsTrain,labelsBag,x0,z,...
            print,output,summary);
        fprintf('TRAINING CORRECTNESS = %6.2f%% \n', correctnessPercentageTrain);
        fprintf(summary,'TRAINING CORRECTNESS = %6.2f%% \n', correctnessPercentageTrain);
        fprintf(output,'TRAINING CORRECTNESS = %6.2f%% \n', correctnessPercentageTrain);
        fprintf(results,'TRAINING CORRECTNESS = %6.2f%% \n', correctnessPercentageTrain);
        
        sumCorrectnessTrain = sumCorrectnessTrain + correctnessPercentageTrain;
        print = true;
        correctnessPercentageTest = correctness(XTest,idxUnls(iFoldLev1,:),bag_idsTest,labelsBag,x0,z,...
            print,output,summary);
        fprintf('TESTING CORRECTNESS = %6.2f%% \n', correctnessPercentageTest);
        fprintf(summary,'TESTING CORRECTNESS = %6.2f%% \n', correctnessPercentageTest);
        fprintf(output,'TESTING CORRECTNESS = %6.2f%% \n', correctnessPercentageTest);
        fprintf(results,'TESTING CORRECTNESS = %6.2f%% \n', correctnessPercentageTest);
        fprintf(summary,'CPU TIME = %6.2f secs \n', timeFold);
        fprintf(output,'CPU TIME = %6.2f secs\n', timeFold);
        fprintf(results,'CPU TIME = %6.2f secs\n', timeFold);
        
        sumCorrectnessTest = sumCorrectnessTest + correctnessPercentageTest;
        sumTime = sumTime + timeFold;
        
    end
    
    averageCorrectnessTrain = sumCorrectnessTrain/numFoldLev1;
    fprintf('AVERAGE TRAINING CORRECTNESS = %6.2f%% \n', averageCorrectnessTrain);
    fprintf(summary,'AVERAGE TRAINING CORRECTNESS = %6.2f%% \n', averageCorrectnessTrain);
    fprintf(output,'AVERAGE TRAINING CORRECTNESS = %6.2f%% \n', averageCorrectnessTrain);
    fprintf(results,'AVERAGE TRAINING CORRECTNESS = %6.2f%% \n', averageCorrectnessTrain);
    
    averageTime = sumTime/numFoldLev1;
    fprintf('AVERAGE CPU TIME = %6.2f secs \n', averageTime);
    fprintf(summary,'AVERAGE CPU TIME = %6.2f secs \n', averageTime);
    fprintf(output,'AVERAGE CPU TIME = %6.2f secs\n', averageTime);
    fprintf(results,'AVERAGE CPU TIME = %6.2f secs\n', averageTime);
    
    averageCorrectnessTest = sumCorrectnessTest/numFoldLev1;
    fprintf('AVERAGE TESTING CORRECTNESS = %6.2f%% \n', averageCorrectnessTest);
    fprintf(summary,'AVERAGE TESTING CORRECTNESS = %6.2f%% \n', averageCorrectnessTest);
    fprintf(output,'AVERAGE TESTING CORRECTNESS = %6.2f%% \n', averageCorrectnessTest);
    fprintf(results,'AVERAGE TESTING CORRECTNESS = %6.2f%% \n', averageCorrectnessTest);
    
end



end