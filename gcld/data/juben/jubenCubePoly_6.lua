local jubenCubePoly = {}
function jubenCubePoly.curve_72_73()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -696
    data.y[0] = -240
    data.x[1] = 1020.9
    data.y[1] = 386.57
    data.x[2] = -403.81
    data.y[2] = 248.52
    data.x[3] = 380.98
    data.y[3] = 305.57
    return data
end

function jubenCubePoly.curve_73_74()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 106.67
    data.y[0] = 96
    data.x[1] = -140.57
    data.y[1] = -168
    data.x[2] = 363.9
    data.y[2] = -88
    data.x[3] = 303.63
    data.y[3] = 700.8
    return data
end

function jubenCubePoly.curve_73_75()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -370.37
    data.y[0] = 31.25
    data.x[1] = 298.41
    data.y[1] = -0.89286
    data.x[2] = 514.89
    data.y[2] = 93.571
    data.x[3] = 304.75
    data.y[3] = 702
    return data
end

function jubenCubePoly.curve_74_75()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.9605e-12
    data.y[0] = -2.1833e-12
    data.x[1] = -123
    data.y[1] = 74
    data.x[2] = 238
    data.y[2] = 210
    data.x[3] = 634
    data.y[3] = 541
    return data
end

function jubenCubePoly.curve_74_76()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -3.7572e-12
    data.y[0] = 2.2278e-12
    data.x[1] = 1
    data.y[1] = -130
    data.x[2] = 426
    data.y[2] = 114
    data.x[3] = 634
    data.y[3] = 541
    return data
end

function jubenCubePoly.curve_75_76()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -362.67
    data.y[0] = -277.33
    data.x[1] = 683.43
    data.y[1] = 534.86
    data.x[2] = -8.7619
    data.y[2] = -557.52
    data.x[3] = 750.03
    data.y[3] = 823.86
    return data
end

function jubenCubePoly.curve_76_77()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -5.733e-12
    data.y[0] = 9.6168e-13
    data.x[1] = -197
    data.y[1] = -9
    data.x[2] = 522
    data.y[2] = -196
    data.x[3] = 1061
    data.y[3] = 525
    return data
end

function jubenCubePoly.curve_77_78()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -486.11
    data.y[0] = 52.083
    data.x[1] = 565.77
    data.y[1] = -135.71
    data.x[2] = -113.71
    data.y[2] = 457.56
    data.x[3] = 1385.7
    data.y[3] = 320.36
    return data
end

function jubenCubePoly.curve_77_79()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -165.33
    data.y[0] = 165.33
    data.x[1] = -30.857
    data.y[1] = 61.714
    data.x[2] = 513.19
    data.y[2] = -110.05
    data.x[3] = 1384.6
    data.y[3] = 320.21
    return data
end

function jubenCubePoly.curve_79_80()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 366.9
    data.y[0] = -166.67
    data.x[1] = -384.72
    data.y[1] = 224.11
    data.x[2] = 13.578
    data.y[2] = 228.27
    data.x[3] = 1705.4
    data.y[3] = 439.36
    return data
end

function jubenCubePoly.curve_71_72()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 2.5991e-12
    data.y[0] = -8.0202e-13
    data.x[1] = 66
    data.y[1] = 95
    data.x[2] = -456
    data.y[2] = -44
    data.x[3] = 772
    data.y[3] = 253
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
