function [Y,MAX_scale,MIN_scale]=normalization(X,lower,upper,MAX,MIN)

    [~,n]=size(X);
    if (nargin==3)
    for i=1:n
        Y(:,i)=(X(:,i)-min(X(:,i)))/(max(X(:,i)-min(X(:,i))))*(upper-lower)+lower;
    end
    MIN_scale=min(X);
    MAX_scale=max(X);
else
    for i=1:n
     Y(:,i)=(X(:,i)-MIN(i))/(MAX(i)-MIN(i))*(upper-lower)+lower;
    end
end