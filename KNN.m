function [label] = KNN(X,x,y, k)
    dist = sqrt(sum((X-x).^2,2));%calculate the distance
    [~,index] = mink(dist,k);%to find the k mins
    class = unique(y); %to find how many class we have
    %convert labels to int
    yy = zeros(size(y));
    for i=1:length(class)
        yy(strcmp(y,class{i}))=i;
    end
    count  = histc(yy(index),1:length(class)); % to find the majority vot neighbors
    [~,index] = max(count);
    label=class{index};          % to return the real label
end

