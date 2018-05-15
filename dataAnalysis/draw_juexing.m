function draw_juexing(lv, maxLevel, juexing)

    lvIndex = linspace(120,maxLevel,maxLevel-120+1);
    
    [m,n] = size(juexing);
    
    okCount = zeros(n,maxLevel-120+1);
    notOkCount = zeros(n,maxLevel-120+1);
    
    for i=1:m
        index = lv(i,1);
        
        for j=1:n
            value = juexing(i,j);
        
            if value == 1
                okCount(j, index-120+1) = okCount(j, index-120+1) + 1;
            else
                notOkCount(j, index-120+1) = notOkCount(j, index-120+1) + 1;
            end
        end
    end
    
    %r ºì g ÂÌ b À¶ c À¶ÂÌ m ×Ïºì y »Æ k ºÚ w
    
%     plot(lvIndex, okCount(1,:), 'r*');
%     hold on;
%     plot(lvIndex, notOkCount(1,:), 'ro');
%     hold on;
%     
%     plot(lvIndex, okCount(2,:), 'g*');
%     hold on;
%     plot(lvIndex, notOkCount(2,:), 'go');
%     hold on;
%     
%     plot(lvIndex, okCount(3,:), 'b*');
%     hold on;
%     plot(lvIndex, notOkCount(3,:), 'bo');
%     hold on;
%     
%     plot(lvIndex, okCount(4,:), 'c*');
%     hold on;
%     plot(lvIndex, notOkCount(4,:), 'co');
%     hold on;

%     plot(lvIndex, okCount(5,:), 'm*');
%     hold on;
%     plot(lvIndex, notOkCount(5,:), 'mo');
%     hold on;
    
end