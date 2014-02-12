local jubenCubePoly = {}
function jubenCubePoly.curve_1_9()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 450
    data.y[0] = 546
    data.x[1] = -775.29
    data.y[1] = -1019.6
    data.x[2] = 855.57
    data.y[2] = 524.05
    data.x[3] = 1013.1
    data.y[3] = 513.05
    return data
end

function jubenCubePoly.curve_5_2()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 334.49
    data.y[0] = -528.94
    data.x[1] = -470.04
    data.y[1] = 1132.2
    data.x[2] = 542.18
    data.y[2] = -758.98
    data.x[3] = 373.58
    data.y[3] = 918.02
    return data
end

function jubenCubePoly.curve_2_4()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 117.33
    data.y[0] = -128
    data.x[1] = -252.57
    data.y[1] = 412.57
    data.x[2] = 439.24
    data.y[2] = -290.57
    data.x[3] = 778.63
    data.y[3] = 760.77
    return data
end

function jubenCubePoly.curve_4_3()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 117
    data.y[0] = 490.5
    data.x[1] = -270
    data.y[1] = -787.5
    data.x[2] = 443
    data.y[2] = 400
    data.x[3] = 1083
    data.y[3] = 755
    return data
end

function jubenCubePoly.curve_4_9()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 510
    data.y[0] = 372
    data.x[1] = -841.71
    data.y[1] = -364.71
    data.x[2] = 797.4
    data.y[2] = -193.83
    data.x[3] = 1085.5
    data.y[3] = 748.83
    return data
end

function jubenCubePoly.curve_3_9()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 288
    data.y[0] = 534
    data.x[1] = -24.429
    data.y[1] = -523.29
    data.x[2] = -91.357
    data.y[2] = -300.76
    data.x[3] = 1375.4
    data.y[3] = 855.74
    return data
end

function jubenCubePoly.curve_5_7()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 660
    data.y[0] = -78
    data.x[1] = -1278.9
    data.y[1] = 164.14
    data.x[2] = 739.95
    data.y[2] = -415.33
    data.x[3] = 366.48
    data.y[3] = 910.14
    return data
end

function jubenCubePoly.curve_7_6()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -101.85
    data.y[0] = -332.18
    data.x[1] = 340.28
    data.y[1] = 705.85
    data.x[2] = -0.88624
    data.y[2] = -545.62
    data.x[3] = 492.73
    data.y[3] = 587.65
    return data
end

function jubenCubePoly.curve_6_1()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 442.67
    data.y[0] = -37.333
    data.x[1] = -827.43
    data.y[1] = 173.71
    data.x[2] = 665.76
    data.y[2] = -37.381
    data.x[3] = 731.87
    data.y[3] = 414.81
    return data
end

function jubenCubePoly.curve_9_8()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -336
    data.y[0] = -176
    data.x[1] = 886.86
    data.y[1] = 468.57
    data.x[2] = -379.86
    data.y[2] = -547.57
    data.x[3] = 1546
    data.y[3] = 567.07
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
