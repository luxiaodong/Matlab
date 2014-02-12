local jubenCubePoly = {}
function jubenCubePoly.curve_4_6()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -384
    data.y[0] = -234
    data.x[1] = -54.429
    data.y[1] = 264.86
    data.x[2] = 390.74
    data.y[2] = -309.36
    data.x[3] = 1276.1
    data.y[3] = 442.29
    return data
end

function jubenCubePoly.curve_1_3()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -3.416e-13
    data.y[0] = 2.0645e-12
    data.x[1] = 89
    data.y[1] = -51
    data.x[2] = 246
    data.y[2] = 68
    data.x[3] = 606
    data.y[3] = 832
    return data
end

function jubenCubePoly.curve_1_2()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -394.68
    data.y[0] = -309.03
    data.x[1] = 752.28
    data.y[1] = 461.31
    data.x[2] = -449.55
    data.y[2] = -389.54
    data.x[3] = 605.51
    data.y[3] = 832.17
    return data
end

function jubenCubePoly.curve_1_7()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -160
    data.y[0] = -517.33
    data.x[1] = 305.14
    data.y[1] = 902.86
    data.x[2] = 66.857
    data.y[2] = -608.52
    data.x[3] = 605.54
    data.y[3] = 831.36
    return data
end

function jubenCubePoly.curve_3_8()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 2.7848e-12
    data.y[0] = 2.0645e-12
    data.x[1] = -28
    data.y[1] = -36
    data.x[2] = 238
    data.y[2] = -84
    data.x[3] = 941
    data.y[3] = 849
    return data
end

function jubenCubePoly.curve_2_9()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -562.5
    data.y[0] = 382.5
    data.x[1] = 864
    data.y[1] = -571.5
    data.x[2] = -336.5
    data.y[2] = -149
    data.x[3] = 514
    data.y[3] = 594
    return data
end

function jubenCubePoly.curve_7_10()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -2.3021e-13
    data.y[0] = -1.8171e-12
    data.x[1] = -18
    data.y[1] = 3
    data.x[2] = 228
    data.y[2] = -252
    data.x[3] = 818
    data.y[3] = 609
    return data
end

function jubenCubePoly.curve_8_4()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -759.26
    data.y[0] = 10.417
    data.x[1] = 1396.9
    data.y[1] = 19.643
    data.x[2] = -510.68
    data.y[2] = -313.99
    data.x[3] = 1147.6
    data.y[3] = 728.5
    return data
end

function jubenCubePoly.curve_9_5()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 3.3046e-13
    data.y[0] = 7.5747e-13
    data.x[1] = 22
    data.y[1] = 107
    data.x[2] = 386
    data.y[2] = -208
    data.x[3] = 479
    data.y[3] = 256
    return data
end

function jubenCubePoly.curve_10_5()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1.0397e-12
    data.y[0] = 4.7527e-13
    data.x[1] = -173
    data.y[1] = 49
    data.x[2] = 32
    data.y[2] = -254
    data.x[3] = 1028
    data.y[3] = 360
    return data
end

function jubenCubePoly.curve_5_6()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -153
    data.y[0] = 162
    data.x[1] = 130.5
    data.y[1] = -130.5
    data.x[2] = 369.5
    data.y[2] = -22.5
    data.x[3] = 887
    data.y[3] = 155
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
