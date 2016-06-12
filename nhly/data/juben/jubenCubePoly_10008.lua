local jubenCubePoly = {}
function jubenCubePoly.curve_10802_10803()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 250.67
    data.y[0] = -42.667
    data.x[1] = -331.43
    data.y[1] = 386.29
    data.x[2] = -202.24
    data.y[2] = -355.62
    data.x[3] = 1692.9
    data.y[3] = 325.09
    return data
end

function jubenCubePoly.curve_10803_10804()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -101.33
    data.y[0] = -42.667
    data.x[1] = -12.571
    data.y[1] = 126.86
    data.x[2] = 178.9
    data.y[2] = 77.81
    data.x[3] = 1409.5
    data.y[3] = 312.66
    return data
end

function jubenCubePoly.curve_10803_10805()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 128
    data.y[0] = -5.3333
    data.x[1] = -114.29
    data.y[1] = 83.429
    data.x[2] = -273.71
    data.y[2] = -23.095
    data.x[3] = 1409.1
    data.y[3] = 313.73
    return data
end

function jubenCubePoly.curve_10805_10806()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -85.333
    data.y[0] = 10.667
    data.x[1] = 165.71
    data.y[1] = -117.71
    data.x[2] = -386.38
    data.y[2] = 103.05
    data.x[3] = 1151.5
    data.y[3] = 367.89
    return data
end

function jubenCubePoly.curve_10805_10807()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 149.33
    data.y[0] = 256
    data.x[1] = -88
    data.y[1] = -282.29
    data.x[2] = -275.33
    data.y[2] = 236.29
    data.x[3] = 1151.8
    data.y[3] = 366.71
    return data
end

function jubenCubePoly.curve_10806_10807()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -32
    data.y[0] = -42.667
    data.x[1] = -17.143
    data.y[1] = 145.14
    data.x[2] = 141.14
    data.y[2] = 111.52
    data.x[3] = 843.26
    data.y[3] = 364.54
    return data
end

function jubenCubePoly.curve_10806_10808()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -309.33
    data.y[0] = 74.667
    data.x[1] = 372.57
    data.y[1] = -74.286
    data.x[2] = -281.24
    data.y[2] = 91.619
    data.x[3] = 845.57
    data.y[3] = 363.51
    return data
end

function jubenCubePoly.curve_10807_10808()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -117.33
    data.y[0] = -373.33
    data.x[1] = 162.29
    data.y[1] = 594.29
    data.x[2] = -354.95
    data.y[2] = -342.95
    data.x[3] = 936.89
    data.y[3] = 578.09
    return data
end

function jubenCubePoly.curve_10801_10802()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 80
    data.y[0] = -117.33
    data.x[1] = -189.71
    data.y[1] = 180.57
    data.x[2] = 122.71
    data.y[2] = -241.24
    data.x[3] = 1680
    data.y[3] = 502.57
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
