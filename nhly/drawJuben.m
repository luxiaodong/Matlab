function drawJuben()

jubenList = load('data/juben/city_info.txt');

s = size(jubenList);

for i=1:s(1,1)
    jubenID = jubenList(i,1);
    jubenWidth = jubenList(i,2);
    jubenHeight = jubenList(i,3);
    drawSingleJuben( jubenID, jubenWidth, jubenHeight);

end

end