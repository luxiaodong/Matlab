local jubenCubePoly = {}
function jubenCubePoly.curve_10602_10606()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -337.5
    data.y[0] = 382.5
    data.x[1] = 535.5
    data.y[1] = -535.5
    data.x[2] = 42
    data.y[2] = 220
    data.x[3] = 603
    data.y[3] = 208
    return data
end

function jubenCubePoly.curve_10601_10602()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.9011e-12
    data.y[0] = 6.6093e-13
    data.x[1] = 74
    data.y[1] = 55
    data.x[2] = -250
    data.y[2] = 18
    data.x[3] = 779
    data.y[3] = 135
    return data
end

function jubenCubePoly.curve_10602_10603()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1.2476e-12
    data.y[0] = 1.5279e-12
    data.x[1] = -127
    data.y[1] = -6
    data.x[2] = 120
    data.y[2] = 162
    data.x[3] = 603
    data.y[3] = 208
    return data
end

function jubenCubePoly.curve_10603_10604()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 5.1983e-13
    data.y[0] = 5.3468e-13
    data.x[1] = 94
    data.y[1] = 148
    data.x[2] = -278
    data.y[2] = -90
    data.x[3] = 596
    data.y[3] = 364
    return data
end

function jubenCubePoly.curve_10604_10605()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -297
    data.y[0] = 468
    data.x[1] = 423
    data.y[1] = -697.5
    data.x[2] = 63
    data.y[2] = 351.5
    data.x[3] = 412
    data.y[3] = 422
    return data
end

function jubenCubePoly.curve_10605_10607()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -9.3569e-13
    data.y[0] = 1.1882e-13
    data.x[1] = 47
    data.y[1] = 81
    data.x[2] = 162
    data.y[2] = -198
    data.x[3] = 601
    data.y[3] = 544
    return data
end

function jubenCubePoly.curve_10606_10607()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 3.6091e-12
    data.y[0] = 5.3839e-13
    data.x[1] = -45
    data.y[1] = -6
    data.x[2] = 12
    data.y[2] = 158
    data.x[3] = 843
    data.y[3] = 275
    return data
end

function jubenCubePoly.curve_10607_10608()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1.9159e-12
    data.y[0] = 8.9114e-13
    data.x[1] = -75
    data.y[1] = 25
    data.x[2] = 76
    data.y[2] = 138
    data.x[3] = 810
    data.y[3] = 427
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
