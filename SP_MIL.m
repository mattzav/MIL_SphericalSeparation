function [x0, z] = SP_MIL(C,X,bags,bag_ids,labelsBag,output,summary)

    % numPoints is the number of points used to learn the classifier
    % dim is the dimension of the space

    [numPoints, dim] = size(X);

    % numBags is the number of bags used to learn the classifier

    [temp, numBags] = size(bags);

    % numTotalBags is the number of bags of the entire dataset

    [temp, numTotalBags] = size(labelsBag);

    for i=1:numPoints
        if labelsBag(bag_ids(i)) == 1
            y(i) = 1;
            %numPosPointsInBag(bag_ids(i)) = numPosPointsInBag(bag_ids(i)) + 1;
        else
            y(i) = -1;
        end
    end

    numIter = 0;
    
    haveToContinue = true;
    
    while(haveToContinue & numIter <5)
        
        numIter = numIter + 1;
        
        oldy = y;
        
        x0 = compute_x0(dim,numPoints,bag_ids,labelsBag,y,X,numBags);
        dist = compute_distances(x0,numPoints,bag_ids,labelsBag,X);
       
        [A,B] = compute_A_B(numPoints,X,y); % si potrebbe fare direttamente quando aggiorno le y
        z = spsep(A,B,x0,C); %si possono calcolare prima le distanze e passarle gia calcolate
        
        [y, closest,minDist] = update_y(dist,numPoints,bag_ids,bags,y,labelsBag,z);
        
        haveToContinue = ismember(0,y==oldy);
        
        y = recover_feasibility(y,closest,minDist,z, numBags,bags,labelsBag);
        
   
        
    end
end

% CALCOLO X0 in funzione del numero di punti nei bag positivi

function x0 = compute_x0(dim,numPoints,bag_ids,labelsBag,y,X,numBags)

    inBag = zeros(1,numBags);
    count = 0;
    
    posBag = zeros(1,numBags);
    numPosBag = 0;
    
    for i=1:numPoints
        if labelsBag(bag_ids(i)) == 1 & y(i) == 1
            count = count + 1;
            inBag(bag_ids(i)) = inBag(bag_ids(i)) + 1;
            
            if(posBag(bag_ids(i)) == 0)
                posBag(bag_ids(i)) = 1;
                numPosBag = numPosBag + 1;
            end
        end
    end
    
    toReturn = zeros(1,dim);
    for i=1:numPoints
        if labelsBag(bag_ids(i)) == 1 & y(i) == 1
            factor = (count-inBag(bag_ids(i)))/(count*(numPosBag-1));
            factor = factor / inBag(bag_ids(i));
            toReturn = toReturn + X(i,:)*factor;
        end
    end
    
   	x0 = toReturn;
end
%END METODO

%CALCOLO x0 COME SULL'ARTICOLO
% function x0 = compute_x0(dim,numPoints,bag_ids,labelsBag,y,X,numBags)
%     toReturn = zeros(1,dim);
%     inBag = zeros(1,numBags);
%     count = 0;
%     for i=1:numPoints
%         if labelsBag(bag_ids(i)) == 1 & y(i) == 1
%             count = count + 1;
%             toReturn = toReturn + X(i,:);
%         end
%     end
%    	x0 = toReturn/count;
% end
%END METODO

%CALCOLO X0 in funzione del solo bag positivo avente meno istanze
%classificate come positive

% function x0 = compute_x0(dim,numPoints,bag_ids,labelsBag,y,X,numBags,bags)
% 
%     inBag = zeros(1,numBags);
%     
%     for i=1:numPoints
%         if labelsBag(bag_ids(i)) == 1 & y(i) == 1     
%             inBag(bag_ids(i)) = inBag(bag_ids(i)) + 1;
%         end
%     end
%         
%     minimumIndex = -1;
%     minimumNumberInBag = Inf;
%     
%     for i=1:numBags
%         if(labelsBag(bags(i)) == 1 & inBag(bags(i)) < minimumNumberInBag)
%             minimumNumberInBag = inBag(bags(i));
%             minimumIndex = bags(i);
%         end
%     end
%     
%     toReturn = zeros(1,dim);
%     for i=1:numPoints
%         if bag_ids(i) == minimumIndex
%             toReturn = toReturn + X(i,:)/minimumNumberInBag;
%         end
%     end
%     
%    	x0 = toReturn;
% end

%END METODO

function dist = compute_distances(x0,numPoints,bag_ids,labelsBag,X)
    dist = zeros(numPoints,1);
    for i=1:numPoints
        if labelsBag(bag_ids(i)) == 1
            dist(i) = (norm(X(i,:) - x0))^2;
        end
    end
end

function [A,B] = compute_A_B(numPoints,X,y)
    A = [];
    B = [];
    
    for i=1:numPoints
        if y(i) == 1
            A = [A;X(i,:)];
        else
            B = [B;X(i,:)];
        end
    end
end
    
function [y, closest,minDist] = update_y(dist,numPoints,bag_ids,bags,y,labelsBag,z)
    minDist = Inf(1,max(bags));
    closest = -ones(1,max(bags));
    
    for i=1:numPoints
        if labelsBag(bag_ids(i)) == 1
            if dist(i) <= z
                y(i) = 1;
            else
                y(i) = -1;
            end
            
            if dist(i)<minDist(bag_ids(i))
                minDist(bag_ids(i)) = dist(i);
                closest(bag_ids(i)) = i;
            end
        end
    end
end

function y = recover_feasibility(y, closest, minDist, z, numBags,bags,labelsBag)
    for i = 1:numBags
        if labelsBag(bags(i)) == 1 & minDist(bags(i))>z
            y(closest(bags(i))) = 1;
        end
    end
end
