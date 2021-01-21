function z = spsep(A,B,x0,C)

[c, d] = distance(A,B, x0);

[z,error_a,error_b]=algorithm_spsep(c,d,C);

end

%************************** Distance function ******************************************

function [c, d]=distance(A,B, x0)    %+

   [m,n]=size(A);
   [k,n]=size(B);

   %calculate the distances of the points of A from the selected center in R^n;
   for i=1:m
      c(i)= (norm(A(i,:) - x0))^2;
   end
   
   %calculate the distances of the points of B from the selected center in R^n;
   for l=1:k
      d(l) = (norm(B(l,:) - x0))^2;
   end

return
end



%********************  function to calculate z ******************
%********************************************************************

function [z,error_a,error_b]=algorithm_spsep(distance_A,distance_B,C) %+

c=-sort(-distance_A); %+ 

d=sort(distance_B); %+

msep=max( size(c) ); %+
ksep=max( size(d) ); %+


%***********  Algorithm  ******************;

%***************** Initialization ***************;
r=floor(1/C);
p_bar=min(ksep,msep-r);

alpha=zeros(msep,1);
beta=zeros(ksep,1);
error_a=0;
error_b=0;

%****************** Step 1 ***********************;
alpha(1:r)=C;
error_a=error_a+r;  %

if (c(r+1)<= d(1))
   alpha(r+1)=1-C*r;
   z=c(r+1);   %
   %disp('exit (a)');
   return
end

if (c(r+1:r+p_bar)>d(1:p_bar))
   if (p_bar>1)
      alpha(r+1:r+p_bar-1)=C;
      error_a=error_a+p_bar-1;  %
   end
   alpha(r+p_bar)=1-C*r;
   z=c(r+p_bar);           %
   beta(1:p_bar-1)=C;
   error_b=error_b+p_bar-1; %
   %disp('exit (b)');
   return
end

%****************** Step 2 ***********************;
ind=find( c(r+2:r+p_bar)<=d(2:p_bar) );
p_star=min(ind)+1; 
if ( c(r+p_star)>=d(p_star-1) )
   alpha(r+1:r+p_star-1)=C;
   error_a = error_a + p_star-1;    %
   alpha(r+p_star)=1-C*r;
   z=c(r+p_star);                  %
   beta(1:p_star-1)=C;
   error_b=error_b+p_star-1;        %
   %disp('exit (c)');
   return
else
   alpha(r+1:r+p_star-1)=C;
   error_a=error_a+p_star-1;        %
   if (p_star>2)
      beta(1:p_star-2)=C;
      error_b=error_b+p_star-2;     %
   end
   beta(p_star-1)=C*(r+1)-1;
   z=d(p_star-1);                  %
   %disp('exit (d)');
   return
end
end



