local jubenCubePoly = {}
function jubenCubePoly.curve_10602_10606()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -32
    data.y[0] = 10.667
    data.x[1] = 4.5714
    data.y[1] = 10.286
    data.x[2] = 293.43
    data.y[2] = 75.048
    data.x[3] = 601.97
    data.y[3] = 186.69
    return data
end

function jubenCubePoly.curve_10601_10602()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -26.667
    data.y[0] = 5.3333
    data.x[1] = 16
    data.y[1] = -61.714
    data.x[2] = -144.33
    data.y[2] = 155.38
    data.x[3] = 754.7
    data.y[3] = 88.186
    return data
end

function jubenCubePoly.curve_10602_10603()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -64
    data.y[0] = 58.667
    data.x[1] = -68.571
    data.y[1] = -78.857
    data.x[2] = 148.57
    data.y[2] = 195.19
    data.x[3] = 599.83
    data.y[3] = 187.84
    return data
end

function jubenCubePoly.curve_10603_10604()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 186.67
    data.y[0] = -74.667
    data.x[1] = -304
    data.y[1] = 250.29
    data.x[2] = -113.67
    data.y[2] = -123.62
    data.x[3] = 616.3
    data.y[3] = 363.29
    return data
end

function jubenCubePoly.curve_10604_10605()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 240
    data.y[0] = 32
    data.x[1] = -323.43
    data.y[1] = 2.2857
    data.x[2] = 304.43
    data.y[2] = 99.714
    data.x[3] = 385.07
    data.y[3] = 414.69
    return data
end

function jubenCubePoly.curve_10605_10607()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 261.33
    data.y[0] = 21.333
    data.x[1] = -384
    data.y[1] = -53.714
    data.x[2] = 321.67
    data.y[2] = -89.619
    data.x[3] = 606.7
    data.y[3] = 547.69
    return data
end

function jubenCubePoly.curve_10606_10607()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -58.667
    data.y[0] = -229.33
    data.x[1] = 82.286
    data.y[1] = 361.14
    data.x[2] = -84.619
    data.y[2] = 11.19
    data.x[3] = 865.39
    data.y[3] = 282.04
    return data
end

function jubenCubePoly.curve_10607_10608()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 69.333
    data.y[0] = 64
    data.x[1] = -181.71
    data.y[1] = -58.286
    data.x[2] = 145.38
    data.y[2] = 164.29
    data.x[3] = 804.79
    data.y[3] = 426.71
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
