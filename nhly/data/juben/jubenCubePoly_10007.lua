local jubenCubePoly = {}
function jubenCubePoly.curve_10708_10710()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -416
    data.y[0] = -304
    data.x[1] = 633.14
    data.y[1] = 470.86
    data.x[2] = -71.143
    data.y[2] = -365.86
    data.x[3] = 1280.1
    data.y[3] = 469.36
    return data
end

function jubenCubePoly.curve_10701_10702()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -437.33
    data.y[0] = 405.33
    data.x[1] = 750.86
    data.y[1] = -627.43
    data.x[2] = 86.476
    data.y[2] = 300.1
    data.x[3] = 600.86
    data.y[3] = 799.57
    return data
end

function jubenCubePoly.curve_10701_10703()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -266.67
    data.y[0] = 224
    data.x[1] = 337.14
    data.y[1] = -380.57
    data.x[2] = -190.48
    data.y[2] = -67.429
    data.x[3] = 600.14
    data.y[3] = 799.43
    return data
end

function jubenCubePoly.curve_10701_10704()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -586.67
    data.y[0] = -320
    data.x[1] = 774.86
    data.y[1] = 422.86
    data.x[2] = -38.19
    data.y[2] = -334.86
    data.x[3] = 601.26
    data.y[3] = 800.26
    return data
end

function jubenCubePoly.curve_10702_10705()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 21.333
    data.y[0] = -122.67
    data.x[1] = 27.429
    data.y[1] = 328
    data.x[2] = 99.238
    data.y[2] = -340.33
    data.x[3] = 999.43
    data.y[3] = 878.1
    return data
end

function jubenCubePoly.curve_10703_10706()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 394.67
    data.y[0] = 261.33
    data.x[1] = -606.86
    data.y[1] = -533.71
    data.x[2] = 232.19
    data.y[2] = -74.619
    data.x[3] = 479.54
    data.y[3] = 575.99
    return data
end

function jubenCubePoly.curve_10704_10707()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -234.67
    data.y[0] = 298.67
    data.x[1] = 114.29
    data.y[1] = -469.71
    data.x[2] = 376.38
    data.y[2] = -82.952
    data.x[3] = 746.89
    data.y[3] = 568.09
    return data
end

function jubenCubePoly.curve_10705_10708()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -565.33
    data.y[0] = 192
    data.x[1] = 1075.4
    data.y[1] = -360
    data.x[2] = -378.1
    data.y[2] = -106
    data.x[3] = 1148.2
    data.y[3] = 744.6
    return data
end

function jubenCubePoly.curve_10706_10709()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -117.33
    data.y[0] = 26.667
    data.x[1] = 219.43
    data.y[1] = 108.57
    data.x[2] = 319.9
    data.y[2] = -210.24
    data.x[3] = 501.63
    data.y[3] = 228.47
    return data
end

function jubenCubePoly.curve_10707_10709()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 74.667
    data.y[0] = -32
    data.x[1] = -147.43
    data.y[1] = 99.429
    data.x[2] = -11.238
    data.y[2] = -227.43
    data.x[3] = 1006.2
    data.y[3] = 314.03
    return data
end

function jubenCubePoly.curve_10709_10710()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 458.67
    data.y[0] = -352
    data.x[1] = -933.71
    data.y[1] = 773.71
    data.x[2] = 979.05
    data.y[2] = -305.71
    data.x[3] = 921.09
    data.y[3] = 156.51
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
