local jubenCubePoly = {}
function jubenCubePoly.curve_10401_10403()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1.1696e-12
    data.y[0] = -2.9853e-12
    data.x[1] = 21
    data.y[1] = -29
    data.x[2] = 354
    data.y[2] = 18
    data.x[3] = 291
    data.y[3] = 952
    return data
end

function jubenCubePoly.curve_10402_10403()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -5.9409e-13
    data.y[0] = -7.4187e-12
    data.x[1] = -190
    data.y[1] = -43
    data.x[2] = 364
    data.y[2] = -186
    data.x[3] = 492
    data.y[3] = 1170
    return data
end

function jubenCubePoly.curve_10403_10404()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1.4852e-12
    data.y[0] = 1.5446e-12
    data.x[1] = -155
    data.y[1] = -24
    data.x[2] = 204
    data.y[2] = -304
    data.x[3] = 666
    data.y[3] = 941
    return data
end

function jubenCubePoly.curve_10404_10405()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -2.8219e-12
    data.y[0] = -2.6734e-12
    data.x[1] = 29
    data.y[1] = 80
    data.x[2] = 216
    data.y[2] = -130
    data.x[3] = 715
    data.y[3] = 613
    return data
end

function jubenCubePoly.curve_10404_10406()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 2.5249e-12
    data.y[0] = -1.4927e-12
    data.x[1] = 168
    data.y[1] = 15
    data.x[2] = -180
    data.y[2] = -226
    data.x[3] = 715
    data.y[3] = 613
    return data
end

function jubenCubePoly.curve_10406_10407()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.4852e-12
    data.y[0] = 1.7823e-13
    data.x[1] = -234
    data.y[1] = 111
    data.x[2] = 126
    data.y[2] = -312
    data.x[3] = 703
    data.y[3] = 402
    return data
end

function jubenCubePoly.curve(cityID1, cityID2)
    local funName = "curve_" .. tostring(cityID1) .. "_" .. tostring(cityID2)
     if cityID1 > cityID2 then
        funName = "curve_" .. tostring(cityID2) .. "_" .. tostring(cityID1)
     end
    if jubenCubePoly[funName] == nil then
        return nil
    end
    return jubenCubePoly[funName]();
end

function jubenCubePoly.position(data, cityID1, cityID2, percent)
    if cityID1 > cityID2 then
        percent = 1.0 - percent;
    end

    x = data.x[0];
    y = data.y[0];

    for i =1, data.rank do
        x = x*percent + data.x[i];
        y = y*percent + data.y[i];
    end

    return x,y;
end

return jubenCubePoly
