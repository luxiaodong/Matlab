function draw_lv(lv, maxLevel)

    lvIndex = linspace(120,maxLevel,maxLevel-120+1);
    lvCount = zeros(1,maxLevel-120+1);
    
    [m,n] = size(lv);
    for i=1:m
        index = lv(i,1);
        lvCount(1, index-120+1) = lvCount(1, index-120+1) + 1;
    end
    
    plot(lvIndex, lvCount, '*');

end

