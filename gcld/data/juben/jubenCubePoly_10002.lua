local jubenCubePoly = {}
function jubenCubePoly.curve_10206_10207()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 720
    data.y[0] = 294
    data.x[1] = -1148.6
    data.y[1] = -289.71
    data.x[2] = 891.57
    data.y[2] = -187.45
    data.x[3] = 975.4
    data.y[3] = 628.74
    return data
end

function jubenCubePoly.curve_10201_10202()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 957.18
    data.y[0] = -107.64
    data.x[1] = -1724.6
    data.y[1] = 296.73
    data.x[2] = 881.51
    data.y[2] = -515.4
    data.x[3] = 269.28
    data.y[3] = 793.19
    return data
end

function jubenCubePoly.curve_10201_10205()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 120
    data.y[0] = -474
    data.x[1] = -209.14
    data.y[1] = 1030.7
    data.x[2] = 489.67
    data.y[2] = -714.19
    data.x[3] = 270.83
    data.y[3] = 798.86
    return data
end

function jubenCubePoly.curve_10202_10203()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.7823e-13
    data.y[0] = 1.3367e-12
    data.x[1] = 75
    data.y[1] = 19
    data.x[2] = 164
    data.y[2] = -188
    data.x[3] = 387
    data.y[3] = 470
    return data
end

function jubenCubePoly.curve_10203_10204()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 192
    data.y[0] = -32
    data.x[1] = -459.43
    data.y[1] = 193.14
    data.x[2] = 539.43
    data.y[2] = -61.143
    data.x[3] = 625.77
    data.y[3] = 300.74
    return data
end

function jubenCubePoly.curve_10204_10207()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -120
    data.y[0] = 606
    data.x[1] = 33.429
    data.y[1] = -1059
    data.x[2] = 626.76
    data.y[2] = 501.67
    data.x[3] = 896.4
    data.y[3] = 395.83
    return data
end

function jubenCubePoly.curve_10205_10206()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.6746e-12
    data.y[0] = 3.2675e-13
    data.x[1] = 22
    data.y[1] = 137
    data.x[2] = 282
    data.y[2] = -142
    data.x[3] = 674
    data.y[3] = 639
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
