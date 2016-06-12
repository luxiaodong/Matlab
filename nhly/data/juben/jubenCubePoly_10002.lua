local jubenCubePoly = {}
function jubenCubePoly.curve_10206_10207()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -48
    data.y[0] = 464
    data.x[1] = 108.57
    data.y[1] = -770.29
    data.x[2] = 346.43
    data.y[2] = 127.29
    data.x[3] = 972.87
    data.y[3] = 602.61
    return data
end

function jubenCubePoly.curve_10201_10202()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 714.67
    data.y[0] = 74.667
    data.x[1] = -1366.9
    data.y[1] = -123.43
    data.x[2] = 722.19
    data.y[2] = -225.24
    data.x[3] = 293.74
    data.y[3] = 738.57
    return data
end

function jubenCubePoly.curve_10201_10205()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -133.33
    data.y[0] = -106.67
    data.x[1] = 155.43
    data.y[1] = 347.43
    data.x[2] = 342.9
    data.y[2] = -340.76
    data.x[3] = 296.33
    data.y[3] = 739.03
    return data
end

function jubenCubePoly.curve_10202_10203()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -101.33
    data.y[0] = 202.67
    data.x[1] = 320
    data.y[1] = -182.86
    data.x[2] = 76.333
    data.y[2] = -197.81
    data.x[3] = 365.1
    data.y[3] = 463.14
    return data
end

function jubenCubePoly.curve_10203_10204()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 90.667
    data.y[0] = -10.667
    data.x[1] = -282.29
    data.y[1] = -106.29
    data.x[2] = 560.62
    data.y[2] = 260.95
    data.x[3] = 659.81
    data.y[3] = 283.31
    return data
end

function jubenCubePoly.curve_10204_10207()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 64
    data.y[0] = -85.333
    data.x[1] = 7.2189e-12
    data.y[1] = -24
    data.x[2] = 288
    data.y[2] = 103.33
    data.x[3] = 1028.4
    data.y[3] = 430.2
    return data
end

function jubenCubePoly.curve_10205_10206()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 512
    data.y[0] = -26.667
    data.x[1] = -851.43
    data.y[1] = 166.86
    data.x[2] = 653.43
    data.y[2] = -175.19
    data.x[3] = 660.37
    data.y[3] = 638.76
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
