function [] = drawSingleYuenan(index, width, height)
    
cityPosition = load( sprintf('data/yuenan/city_pos_%d.txt', index) );

cityPath = importdata( sprintf('data/yuenan/city_path_%d.txt', index) );
s = size(cityPath);

% path_poly = [];
% times = [];

for i=1:s(1,1)
    row = cityPath(i,:);
    
    if row(1,1) > row(1,2)
        continue;
    end
    
    %citySrc = row(1,1);
    
    citySrc = findJubenCityInPath(row(1,1), cityPosition);
    x= cityPosition(citySrc,2);
    y= cityPosition(citySrc,3);
    for j=3:s(1,2)
        value = row(1, j);
        if isnan(value)
            break;
        else
            if mod(j,2) == 1
                x = cat(2,x, value);
            else
                y = cat(2,y, height - value);
            end
        end
    end
    
    %cityDst = row(1,2);
    cityDst = findJubenCityInPath(row(1,2), cityPosition);
    
    x = cat(2, x, cityPosition(cityDst,2));
    y = cat(2, y, cityPosition(cityDst,3));

    p = findPolyByPoints(x ,y);
    
    pSize = size(p);
    if pSize(1,2) < 4
         XY = bezier(x, y);
         p = findPolyByPoints(XY(1,:), XY(2,:));
%         p =  cat(2, zeros(2, 4 - pSize(1,2)), p);
    end
    
    t = calculatePolyCurveIsometricPoint( p(1,:), p(2,:) );
    t = cat(2, [row(1,1), row(1,2)], t);
    dlmwrite( sprintf('data/yuenan/timeTable_%d.txt',index),t,'delimiter','\t','newline','pc','-append');
    
    drawPathByPoly(p(1,:), p(2,:));
    drawPoints(x, y);

    p =  cat(2,[row(1,1);row(1,2)], p);
    dlmwrite( sprintf('data/yuenan/polyTable_%d.txt',index),p,'delimiter','\t','newline','pc','-append');
end

X = cityPosition(:,2);
Y = cityPosition(:,3);

plot(X, Y, 'r*');
axis([0 width 0 height]);

set(gca,'DataAspectRatio',[1 1 1])

end