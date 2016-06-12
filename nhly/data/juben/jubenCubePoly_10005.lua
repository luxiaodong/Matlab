local jubenCubePoly = {}
function jubenCubePoly.curve_10501_10502()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -101.33
    data.y[0] = 293.33
    data.x[1] = 17.143
    data.y[1] = -713.14
    data.x[2] = -110.81
    data.y[2] = 744.81
    data.x[3] = 649.24
    data.y[3] = 318.76
    return data
end

function jubenCubePoly.curve_10502_10503()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 5.3333
    data.y[0] = 5.3333
    data.x[1] = 67.429
    data.y[1] = 14.857
    data.x[2] = -183.76
    data.y[2] = 112.81
    data.x[3] = 455.13
    data.y[3] = 643.36
    return data
end

function jubenCubePoly.curve_10503_10504()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -96
    data.y[0] = 85.333
    data.x[1] = 132.57
    data.y[1] = -52.571
    data.x[2] = -70.571
    data.y[2] = 99.238
    data.x[3] = 343.97
    data.y[3] = 776.23
    return data
end

function jubenCubePoly.curve_10504_10505()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -160
    data.y[0] = -106.67
    data.x[1] = 168
    data.y[1] = 186.29
    data.x[2] = -4
    data.y[2] = 154.38
    data.x[3] = 309.4
    data.y[3] = 908.29
    return data
end

function jubenCubePoly.curve_10504_10506()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -26.667
    data.y[0] = -58.667
    data.x[1] = -96
    data.y[1] = 196.57
    data.x[2] = 299.67
    data.y[2] = 81.095
    data.x[3] = 310.7
    data.y[3] = 908.27
    return data
end

function jubenCubePoly.curve_10505_10506()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 48
    data.y[0] = -90.667
    data.x[1] = -149.71
    data.y[1] = 203.43
    data.x[2] = 274.71
    data.y[2] = -127.76
    data.x[3] = 314.39
    data.y[3] = 1141.9
    return data
end

function jubenCubePoly.curve_10506_10511()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 154.67
    data.y[0] = 133.33
    data.x[1] = -298.29
    data.y[1] = -163.43
    data.x[2] = 332.62
    data.y[2] = 43.095
    data.x[3] = 487.61
    data.y[3] = 1126.9
    return data
end

function jubenCubePoly.curve_10507_10508()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -138.67
    data.y[0] = -0
    data.x[1] = 373.71
    data.y[1] = -9.1429
    data.x[2] = -255.05
    data.y[2] = 265.14
    data.x[3] = 749.71
    data.y[3] = 539.26
    return data
end

function jubenCubePoly.curve_10508_10509()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -224
    data.y[0] = -5.3333
    data.x[1] = 338.29
    data.y[1] = 30.857
    data.x[2] = -44.286
    data.y[2] = 77.476
    data.x[3] = 729.49
    data.y[3] = 794.16
    return data
end

function jubenCubePoly.curve_10509_10510()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 266.67
    data.y[0] = 90.667
    data.x[1] = -356.57
    data.y[1] = -222.86
    data.x[2] = 111.9
    data.y[2] = 297.19
    data.x[3] = 799.23
    data.y[3] = 896.64
    return data
end

function jubenCubePoly.curve_10510_10511()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -42.667
    data.y[0] = 96
    data.x[1] = 238.86
    data.y[1] = -64
    data.x[2] = -342.19
    data.y[2] = 46
    data.x[3] = 821.86
    data.y[3] = 1061.8
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
