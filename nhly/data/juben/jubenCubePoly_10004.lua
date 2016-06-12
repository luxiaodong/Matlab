local jubenCubePoly = {}
function jubenCubePoly.curve_10401_10403()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -720
    data.y[0] = 213.33
    data.x[1] = 1177.1
    data.y[1] = -313.14
    data.x[2] = -162.14
    data.y[2] = 79.81
    data.x[3] = 253.64
    data.y[3] = 1046.3
    return data
end

function jubenCubePoly.curve_10402_10403()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -21.333
    data.y[0] = -96
    data.x[1] = 18.286
    data.y[1] = 72
    data.x[2] = 103.05
    data.y[2] = -136
    data.x[3] = 450.69
    data.y[3] = 1185.2
    return data
end

function jubenCubePoly.curve_10403_10404()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -160
    data.y[0] = 341.33
    data.x[1] = 113.14
    data.y[1] = -570.29
    data.x[2] = 106.86
    data.y[2] = -57.048
    data.x[3] = 548.74
    data.y[3] = 1025.9
    return data
end

function jubenCubePoly.curve_10404_10405()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -330.67
    data.y[0] = 160
    data.x[1] = 580.57
    data.y[1] = -75.429
    data.x[2] = 60.095
    data.y[2] = -114.57
    data.x[3] = 609.57
    data.y[3] = 740.77
    return data
end

function jubenCubePoly.curve_10404_10406()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 106.67
    data.y[0] = 266.67
    data.x[1] = 93.714
    data.y[1] = -362.29
    data.x[2] = -180.38
    data.y[2] = -124.38
    data.x[3] = 609.51
    data.y[3] = 740.51
    return data
end

function jubenCubePoly.curve_10406_10407()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 213.33
    data.y[0] = 106.67
    data.x[1] = -434.29
    data.y[1] = -65.143
    data.x[2] = 60.952
    data.y[2] = -231.52
    data.x[3] = 629.71
    data.y[3] = 521.06
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
