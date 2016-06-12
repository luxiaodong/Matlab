local jubenCubePoly = {}
function jubenCubePoly.curve_10104_10105()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -106.67
    data.y[0] = -266.67
    data.x[1] = 78.857
    data.y[1] = 421.71
    data.x[2] = 77.81
    data.y[2] = 68.952
    data.x[3] = 880.46
    data.y[3] = 295.31
    return data
end

function jubenCubePoly.curve_10101_10102()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -506.67
    data.y[0] = 346.67
    data.x[1] = 859.43
    data.y[1] = -475.43
    data.x[2] = -117.76
    data.y[2] = -76.238
    data.x[3] = 356.73
    data.y[3] = 503.27
    return data
end

function jubenCubePoly.curve_10102_10103()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -96
    data.y[0] = -32
    data.x[1] = 211.43
    data.y[1] = 74.286
    data.x[2] = 44.571
    data.y[2] = -102.29
    data.x[3] = 591.63
    data.y[3] = 297.49
    return data
end

function jubenCubePoly.curve_10103_10104()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 128
    data.y[0] = 53.333
    data.x[1] = -238.86
    data.y[1] = -83.429
    data.x[2] = 240.86
    data.y[2] = 86.095
    data.x[3] = 749.54
    data.y[3] = 237.97
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
