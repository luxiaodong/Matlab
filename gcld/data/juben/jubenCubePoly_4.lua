local jubenCubePoly = {}
function jubenCubePoly.curve_51_52()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -130.79
    data.y[0] = -333.33
    data.x[1] = 211.81
    data.y[1] = 611.61
    data.x[2] = 155.13
    data.y[2] = -482.56
    data.x[3] = 303.17
    data.y[3] = 520.36
    return data
end

function jubenCubePoly.curve_52_53()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 48
    data.y[0] = -74.667
    data.x[1] = 28.571
    data.y[1] = 227.43
    data.x[2] = 156.43
    data.y[2] = -216.76
    data.x[3] = 539.87
    data.y[3] = 317.23
    return data
end

function jubenCubePoly.curve_53_54()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 122.67
    data.y[0] = 138.67
    data.x[1] = -244.57
    data.y[1] = -83.429
    data.x[2] = 262.9
    data.y[2] = 80.762
    data.x[3] = 772.73
    data.y[3] = 252.77
    return data
end

function jubenCubePoly.curve_54_55()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -136.57
    data.y[0] = -16.204
    data.x[1] = 36.111
    data.y[1] = 25.198
    data.x[2] = 124.91
    data.y[2] = 188.23
    data.x[3] = 915.78
    data.y[3] = 390.17
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
