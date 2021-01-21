function C = ...
    modelSelection(XTrainLev1,bagsTrainLev1,bag_idsTrainLev1,labelsBag,...
    numFoldLev2,gridC,iFoldLev1,output,summary)

[dimGridC,temp] = size(gridC);

[temp, numBagsTrainLev1] = size(bagsTrainLev1);

[numPointsTrainLev1, dim] = size(XTrainLev1);

numBagsTestLev2 = floor(numBagsTrainLev1/numFoldLev2);

for iC = 1:dimGridC
    
    currentC = gridC(iC);
    
    sumCorrectness = 0.0;
    
    for iFoldLev2 = 1:numFoldLev2
        
        fprintf('MODEL SELECTION: FOLDS = (%i,%i); C = %12.8f (iC = %i);\n',...
            iFoldLev1,iFoldLev2,currentC,iC);
        fprintf(summary,'MODEL SELECTION: FOLDS = (%i,%i); C = %12.8f (iC = %i);\n',...
            iFoldLev1,iFoldLev2,currentC,iC);
        fprintf(output,'MODEL SELECTION: FOLDS = (%i,%i); C = %12.8f (iC = %i);\n ',...
            iFoldLev1,iFoldLev2,currentC,iC);
        
        bagsTrainLev2 = bagsTrainLev1;

        iStart = (iFoldLev2-1)*numBagsTestLev2+1;
        iEnd = iStart + numBagsTestLev2 - 1;

        bagsTestLev2 = bagsTrainLev2(iStart:iEnd);
        bagsTrainLev2(iStart:iEnd) = [];
        
        if (iC == 1)

            % XTrainLev2 is the matrix of the points of the level 2
            % training set 
            XTrainLev2 = [];

            % bag_idsTrainLev2 is the part of vector bag_ids corresponding to 
            % the level 2 training set
            bag_idsTrainLev2 = [];

            % XTestLev2 is the matrix of the points of the level 2 testing set 
            XTestLev2 = [];

            % bag_idsTest is the part of vector bag_ids corresponding to the 
            % level 2 testing set
            bag_idsTestLev2 = [];

            %fprintf('CREATING SECOND LEVEL FOLD NUMBER %i...WAIT...\n',iFoldLev2);
            for i = 1:numPointsTrainLev1
                %fprintf('CREATING SECOND LEVEL FOLD NUMBER %i...WAIT (imax = %i)...i = %i \n',iFoldLev2,numPointsTrainLev1,i);
                if ismember(bag_idsTrainLev1(i),bagsTrainLev2)
                    XTrainLev2 = [XTrainLev2; XTrainLev1(i,:)];
                    bag_idsTrainLev2 = [bag_idsTrainLev2, bag_idsTrainLev1(i)];
                else
                    XTestLev2 = [XTestLev2; XTrainLev1(i,:)];
                    bag_idsTestLev2 = [bag_idsTestLev2, bag_idsTrainLev1(i)];
                end
            end
            if (iFoldLev2==1) 
                XTrainLev21 = XTrainLev2;
                bag_idsTrainLev21 = bag_idsTrainLev2;
                XTestLev21 = XTestLev2;
                bag_idsTestLev21 = bag_idsTestLev2;
            elseif (iFoldLev2==2)
                XTrainLev22 = XTrainLev2;
                bag_idsTrainLev22 = bag_idsTrainLev2;
                XTestLev22 = XTestLev2;
                bag_idsTestLev22 = bag_idsTestLev2;
            elseif (iFoldLev2==3)
                XTrainLev23 = XTrainLev2;
                bag_idsTrainLev23 = bag_idsTrainLev2;
                XTestLev23 = XTestLev2;
                bag_idsTestLev23 = bag_idsTestLev2;
            elseif (iFoldLev2==4)
                XTrainLev24 = XTrainLev2;
                bag_idsTrainLev24 = bag_idsTrainLev2;
                XTestLev24 = XTestLev2;
                bag_idsTestLev24 = bag_idsTestLev2;    
            elseif (iFoldLev2==5)
                XTrainLev25 = XTrainLev2;
                bag_idsTrainLev25 = bag_idsTrainLev2;
                XTestLev25 = XTestLev2;
                bag_idsTestLev25 = bag_idsTestLev2;
            end
        else
            if (iFoldLev2==1) 
                XTrainLev2 = XTrainLev21;
                bag_idsTrainLev2 = bag_idsTrainLev21;
                XTestLev2 = XTestLev21;
                bag_idsTestLev2 = bag_idsTestLev21;
            elseif (iFoldLev2==2)
                XTrainLev2 = XTrainLev22;
                bag_idsTrainLev2 = bag_idsTrainLev22;
                XTestLev2 = XTestLev22;
                bag_idsTestLev2 = bag_idsTestLev22;
            elseif (iFoldLev2==3)
                XTrainLev2 = XTrainLev23;
                bag_idsTrainLev2 = bag_idsTrainLev23;
                XTestLev2 = XTestLev23;
                bag_idsTestLev2 = bag_idsTestLev23;
            elseif (iFoldLev2==4)
                XTrainLev2 = XTrainLev24;
                bag_idsTrainLev2 = bag_idsTrainLev24;
                XTestLev2 = XTestLev24;
                bag_idsTestLev2 = bag_idsTestLev24;    
            elseif (iFoldLev2==5)
                XTrainLev2 = XTrainLev25;
                bag_idsTrainLev2 = bag_idsTrainLev25;
                XTestLev2 = XTestLev25;
                bag_idsTestLev2 = bag_idsTestLev25;
            end           
        end
        
       [x0, z] = SP_MIL(currentC,XTrainLev2,bagsTrainLev2,bag_idsTrainLev2,labelsBag,output,summary);
       
       print = false;
       correctnessPercentage = correctness(XTestLev2,bagsTestLev2,bag_idsTestLev2,labelsBag,x0,z,...
           print,output,summary);
       
       fprintf('MODEL SELECTION: FOLDS = (%i,%i); C = %12.8f (iC = %i); TESTING CORRECTNESS = %6.2f%%\n',...
            iFoldLev1,iFoldLev2,currentC,iC,correctnessPercentage);
       fprintf(summary,'MODEL SELECTION: FOLDS = (%i,%i); C = %12.8f (iC = %i); TESTING CORRECTNESS = %6.2f%%\n',...
            iFoldLev1,iFoldLev2,currentC,iC,correctnessPercentage);
        fprintf(output,'MODEL SELECTION: FOLDS = (%i,%i); C = %12.8f (iC = %i); TESTING CORRECTNESS = %6.2f%% \n ',...
            iFoldLev1,iFoldLev2,currentC,iC,correctnessPercentage);
        
       sumCorrectness = sumCorrectness + correctnessPercentage;
       
    end
    
    averageCorrectness = sumCorrectness/numFoldLev2;
    
    if iC == 1
        bestAverageCorrectness = averageCorrectness;
        bestC = currentC;
    elseif averageCorrectness > bestAverageCorrectness
        bestAverageCorrectness = averageCorrectness;
        bestC = currentC;
    end
    
    fprintf('MODEL SELECTION: current best C = %12.8f, with %6.2f%% \n',...
            bestC,bestAverageCorrectness);
    fprintf(summary,'MODEL SELECTION: current best C = %12.8f, with %6.2f%% \n',...
            bestC,bestAverageCorrectness);
    fprintf(output,'MODEL SELECTION: current best C = %12.8f, with %6.2f%% \n',...
            bestC,bestAverageCorrectness);
           
end

fprintf('MODEL SELECTION: best C for fold n. %i = %12.8f, with %6.2f%% \n',...
            iFoldLev1,bestC,bestAverageCorrectness);
fprintf(summary,'MODEL SELECTION: best C for fold n. %i = %12.8f, with %6.2f%% \n',...
            iFoldLev1,bestC,bestAverageCorrectness);
fprintf(output,'MODEL SELECTION:  best C for fold n. %i = %12.8f, with %6.2f%% \n',...
            iFoldLev1,bestC,bestAverageCorrectness);

C = bestC;

