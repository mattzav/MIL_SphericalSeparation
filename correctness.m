function correctnessPercentage = correctness(X,bags,bag_ids,labelsBag,x0,z,print,output,summary)

[numPoints, dim] = size(X);
 
[temp, numTotalBags] = size(labelsBag);
[temp, numBags] = size(bags);

if print == true
    fprintf(output, 'COMPUTING THE CORRECTNESS ON THE FOLLOWING BAGS: \n %i,', bags(1));
    for i=2:numBags-1
        fprintf(output,'%i,', bags(i));
    end
    fprintf(output,'%i \n', bags(numBags));
end
   
minDist = Inf(1,numTotalBags);

for i = 1:numPoints
    dist =  (norm(X(i,:) - x0))^2;
    if dist < minDist(bag_ids(i))
        minDist(bag_ids(i)) = dist;
    end
end

error = 0;
errorPos = 0;
errorNeg = 0;

for i = 1:numBags
    if minDist(bags(i)) > z && labelsBag(bags(i)) == 1
        error = error + 1;
        errorPos = errorPos + 1;
        if print == true
            fprintf(output,'CLASSIFICATON ERROR: POSITIVE BAG N. %i CLASSIFIED AS NEGATIVE \n',bags(i));  
        end
    end
    if minDist(bags(i)) <= z && labelsBag(bags(i)) == -1
        error = error + 1;
        errorNeg = errorNeg + 1;
        if print == true
            fprintf(output,'CLASSIFICATON ERROR: NEGATIVE BAG N. %i CLASSIFIED AS POSITIVE \n',bags(i));  
        end
    end
end

fprintf(output,'%i BAGS MISCLASSIFIED over %i: %i POSITIVE and %i NEGATIVE \n', ...
    error,numBags,errorPos,errorNeg);
fprintf(summary,'%i BAGS MISCLASSIFIED over %i: %i POSITIVE and %i NEGATIVE \n', ...
    error,numBags,errorPos,errorNeg);

correctnessPercentage = 100 - (error/numBags) * 100;

