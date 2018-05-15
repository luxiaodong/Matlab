
%%分析创建时间与等级的关系，也就是成长线
function draw_lv_time_vip(lv, days, vip)
    
    vipCount = zeros(1,12);
    vipIndex = zeros(1,12);
    
    [m,n] = size(lv);
    for i=1:m
        if lv(i,1) ~= 190
            value = vip(i,1)+1;
            vipCount(1, value) = vipCount(1, value) + 1;
            vipIndex(vipCount(1, value), value) = i;
        end
    end
    
    for i=1:12
        c = 1 - 0.07*i;
        index = vipIndex(vipIndex(:,i)>1,i);
        x=lv(index,1);
        y=days(index,1);
        p=polyfit(x,y,2);
        
%         hold on
%         plot(x, y, '*', 'Color',[c,c,c]);
        
        xi=120:190; 
        yi=polyval(p,xi);
        plot(xi, yi, '*', 'Color',[c,c,c]);
        hold on;
    end
end



