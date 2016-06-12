function drawJapan()

japanList = load('data/japan/city_info.txt');

s = size(japanList);

for i=1:s(1,1)
    japanID = japanList(i,1);
    japanWidth = japanList(i,2);
    japanHeight = japanList(i,3);
    drawSingleJapan( japanID, japanWidth, japanHeight);
end

end