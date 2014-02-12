local jubenCubePoly = {}
function jubenCubePoly.curve_44_45()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 637.49
    data.y[0] = -110
    data.x[1] = -1141.2
    data.y[1] = 192.71
    data.x[2] = 529.36
    data.y[2] = 173.14
    data.x[3] = 830.48
    data.y[3] = 524.41
    return data
end

function jubenCubePoly.curve_38_40()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -128.47
    data.y[0] = 65.972
    data.x[1] = 266.37
    data.y[1] = -166.37
    data.x[2] = 4.3651
    data.y[2] = 311.71
    data.x[3] = 230.19
    data.y[3] = 184.52
    return data
end

function jubenCubePoly.curve_39_40()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 4.5
    data.y[0] = -171
    data.x[1] = -22.5
    data.y[1] = 171
    data.x[2] = 175
    data.y[2] = -170
    data.x[3] = 214
    data.y[3] = 564
    return data
end

function jubenCubePoly.curve_39_41()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -53.333
    data.y[0] = 26.667
    data.x[1] = 241.14
    data.y[1] = -76.571
    data.x[2] = -55.81
    data.y[2] = 270.9
    data.x[3] = 213.14
    data.y[3] = 563.53
    return data
end

function jubenCubePoly.curve_40_42()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 53.333
    data.y[0] = -37.333
    data.x[1] = -52.571
    data.y[1] = 89.143
    data.x[2] = 233.24
    data.y[2] = -152.81
    data.x[3] = 371.63
    data.y[3] = 394.64
    return data
end

function jubenCubePoly.curve_40_43()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 258.1
    data.y[0] = 142.36
    data.x[1] = -385.81
    data.y[1] = -183.63
    data.x[2] = 320.53
    data.y[2] = 249.25
    data.x[3] = 372.27
    data.y[3] = 395.33
    return data
end

function jubenCubePoly.curve_42_44()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -228
    data.y[0] = -30
    data.x[1] = 348.43
    data.y[1] = -31.714
    data.x[2] = 107.55
    data.y[2] = 297.26
    data.x[3] = 611.19
    data.y[3] = 291.86
    return data
end

function jubenCubePoly.curve_43_44()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -208
    data.y[0] = 186.67
    data.x[1] = 380.57
    data.y[1] = -176
    data.x[2] = 96.429
    data.y[2] = -85.667
    data.x[3] = 565.07
    data.y[3] = 603.1
    return data
end

function jubenCubePoly.curve_44_47()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -176
    data.y[0] = -208
    data.x[1] = 176
    data.y[1] = 236.57
    data.x[2] = 245
    data.y[2] = 148.43
    data.x[3] = 833.1
    data.y[3] = 527.87
    return data
end

function jubenCubePoly.curve_46_48()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -471.06
    data.y[0] = 453.7
    data.x[1] = 739.19
    data.y[1] = -685.02
    data.x[2] = -93.161
    data.y[2] = 483.38
    data.x[3] = 1116.7
    data.y[3] = 266.04
    return data
end

function jubenCubePoly.curve_47_48()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 368.06
    data.y[0] = 300.93
    data.x[1] = -608.33
    data.y[1] = -482.64
    data.x[2] = 454.8
    data.y[2] = -4.5569
    data.x[3] = 1078.2
    data.y[3] = 705.13
    return data
end

function jubenCubePoly.curve_48_50()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -912
    data.y[0] = -6
    data.x[1] = 1530.4
    data.y[1] = -85.286
    data.x[2] = -608.88
    data.y[2] = 327.95
    data.x[3] = 1290.8
    data.y[3] = 518.14
    return data
end

function jubenCubePoly.curve_48_49()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -175.93
    data.y[0] = -30.093
    data.x[1] = 250.5
    data.y[1] = 126.39
    data.x[2] = 21.7
    data.y[2] = -378.6
    data.x[3] = 1294.6
    data.y[3] = 515.65
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
