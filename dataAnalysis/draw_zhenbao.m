function draw_zhenbao(lv, maxLevel, zhenbao)
    
    lvIndex = linspace(120,maxLevel,maxLevel-120+1);
    
    [m,n] = size(zhenbao);
    
    %0-1-10’‰±¶
    valueCount = zeros(1+n,maxLevel-120+1);
    
    for i=1:m
        index = lv(i,1);
        value = 0;
        
        for j=1:n
            if j <= n
                if zhenbao(i,j) == 1
                    value = j;
                end   
            end
        end
        
        valueCount(value+1, index-120+1) = valueCount(value+1, index-120+1) + 1;
    end
    
    %bar(valueCount', 'stack');
    %set(gca,'xticklabel',120:1:190);
    
end
