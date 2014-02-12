function cityIndex = findJubenCityInPath(cityID, cityPos)
    cityIndex = 0;
    s = size(cityPos);
    for i=1:s(1,1)
        if cityID == cityPos(i, 1)
            cityIndex = i;
            return ;
        end
    end
end