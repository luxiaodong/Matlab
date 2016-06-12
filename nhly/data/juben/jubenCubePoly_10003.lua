local jubenCubePoly = {}
function jubenCubePoly.curve_10307_10308()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 346.67
    data.y[0] = -53.333
    data.x[1] = -508.57
    data.y[1] = 22.857
    data.x[2] = 326.9
    data.y[2] = -179.52
    data.x[3] = 1096.9
    data.y[3] = 590.86
    return data
end

function jubenCubePoly.curve_10301_10302()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 293.33
    data.y[0] = -341.33
    data.x[1] = -394.29
    data.y[1] = 403.43
    data.x[2] = 255.95
    data.y[2] = -228.1
    data.x[3] = 195.21
    data.y[3] = 452.03
    return data
end

function jubenCubePoly.curve_10302_10303()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -165.33
    data.y[0] = 202.67
    data.x[1] = 226.29
    data.y[1] = -179.43
    data.x[2] = 174.05
    data.y[2] = -83.238
    data.x[3] = 351.59
    data.y[3] = 285.57
    return data
end

function jubenCubePoly.curve_10302_10304()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 314.67
    data.y[0] = 53.333
    data.x[1] = -424
    data.y[1] = -186.29
    data.x[2] = 304.33
    data.y[2] = 336.95
    data.x[3] = 350.1
    data.y[3] = 285.31
    return data
end

function jubenCubePoly.curve_10303_10306()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 16
    data.y[0] = -213.33
    data.x[1] = 120
    data.y[1] = 338.29
    data.x[2] = 115
    data.y[2] = 75.048
    data.x[3] = 584.7
    data.y[3] = 224.69
    return data
end

function jubenCubePoly.curve_10304_10306()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 186.67
    data.y[0] = 117.33
    data.x[1] = -74.286
    data.y[1] = -85.714
    data.x[2] = 178.62
    data.y[2] = -95.619
    data.x[3] = 545.81
    data.y[3] = 489.29
    return data
end

function jubenCubePoly.curve_10305_10306()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -368
    data.y[0] = 250.67
    data.x[1] = 504
    data.y[1] = -402.29
    data.x[2] = -133
    data.y[2] = -87.381
    data.x[3] = 833.1
    data.y[3] = 662.01
    return data
end

function jubenCubePoly.curve_10306_10307()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -149.33
    data.y[0] = -320
    data.x[1] = 434.29
    data.y[1] = 446.86
    data.x[2] = -24.952
    data.y[2] = 39.143
    data.x[3] = 837.49
    data.y[3] = 427.06
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
