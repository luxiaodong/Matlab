function drawGaoli()

list = load('data/gaoli/city_info.txt');

s = size(list);

for i=1:s(1,1)
    id = list(i,1);
    width = list(i,2);
    height = list(i,3);
    drawSingleGaoli( id, width, height);
end

end