function drawKFworld()

jubenList = load('data/kfworld/city_info.txt');

s = size(jubenList);

%for i=1:s(1,1)
for i=2:2
    jubenID = jubenList(i,1);
    jubenWidth = jubenList(i,2);
    jubenHeight = jubenList(i,3);
    drawSingleKFworld( jubenID, jubenWidth, jubenHeight);
end

end