function draw_tuchen(lv, maxLevel, tuchen)

    lvIndex = linspace(120,maxLevel,maxLevel-120+1);
    tuchenOkCount = zeros(1,maxLevel-120+1);
    tuchenNotOkCount = zeros(1,maxLevel-120+1);
    
    [m,n] = size(lv);
    for i=1:m
        index = lv(i,1);
        value = tuchen(i,1);
        
        if value == 1
            tuchenOkCount(1, index-120+1) = tuchenOkCount(1, index-120+1) + 1;
        else
            tuchenNotOkCount(1, index-120+1) = tuchenNotOkCount(1, index-120+1) + 1;
        end
    end
    
    plot(lvIndex, tuchenOkCount, '*');
    hold on;
    plot(lvIndex, tuchenNotOkCount, 'o');


end