local jubenCubePoly = {}
function jubenCubePoly.curve_10307_10308()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 486.11
    data.y[0] = 369.21
    data.x[1] = -786.31
    data.y[1] = -538.19
    data.x[2] = 499.96
    data.y[2] = -10.582
    data.x[3] = 1053.3
    data.y[3] = 601.03
    return data
end

function jubenCubePoly.curve_10301_10302()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -6.7578e-13
    data.y[0] = 1.2327e-12
    data.x[1] = -33
    data.y[1] = -19
    data.x[2] = 192
    data.y[2] = -152
    data.x[3] = 186
    data.y[3] = 472
    return data
end

function jubenCubePoly.curve_10302_10303()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -6.832e-13
    data.y[0] = -7.4261e-14
    data.x[1] = 72
    data.y[1] = 89
    data.x[2] = 162
    data.y[2] = -182
    data.x[3] = 345
    data.y[3] = 301
    return data
end

function jubenCubePoly.curve_10302_10304()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 522.67
    data.y[0] = -26.667
    data.x[1] = -790.86
    data.y[1] = 48
    data.x[2] = 458.19
    data.y[2] = 187.67
    data.x[3] = 345.94
    data.y[3] = 300.7
    return data
end

function jubenCubePoly.curve_10303_10306()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.0397e-13
    data.y[0] = -2.9705e-13
    data.x[1] = 58
    data.y[1] = -114
    data.x[2] = 186
    data.y[2] = 330
    data.x[3] = 579
    data.y[3] = 208
    return data
end

function jubenCubePoly.curve_10304_10306()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -0
    data.y[0] = 3.5645e-13
    data.x[1] = 206
    data.y[1] = 68
    data.x[2] = 82
    data.y[2] = -154
    data.x[3] = 535
    data.y[3] = 510
    return data
end

function jubenCubePoly.curve_10305_10306()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1017
    data.y[0] = -261
    data.x[1] = 1413
    data.y[1] = 355.5
    data.x[2] = -400
    data.y[2] = -353.5
    data.x[3] = 827
    data.y[3] = 683
    return data
end

function jubenCubePoly.curve_10306_10307()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -2.2093e-12
    data.y[0] = 5.6439e-13
    data.x[1] = -27
    data.y[1] = -139
    data.x[2] = 256
    data.y[2] = 316
    data.x[3] = 823
    data.y[3] = 424
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
