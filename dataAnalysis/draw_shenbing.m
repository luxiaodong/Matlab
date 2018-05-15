function draw_shenbing(lv, maxLevel, shenbing)

    lvIndex = linspace(120,maxLevel,maxLevel-120+1);
    
    [m,n] = size(shenbing);
    
    %20-50-70-90-120-150-180.
    valueCount = zeros(1+n,maxLevel-120+1);
    
    for i=1:m
        index = lv(i,1);
        value = 0;
        
        for j=1:n
            if j <= n
                if shenbing(i,j) == 1
                    value = j;
                end   
            end
        end
        
        valueCount(value+1, index-120+1) = valueCount(value+1, index-120+1) + 1;
    end
    
    bar(valueCount', 'stack');
    set(gca,'xticklabel',lvIndex);

end