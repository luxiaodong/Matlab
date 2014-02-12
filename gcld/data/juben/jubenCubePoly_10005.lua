local jubenCubePoly = {}
function jubenCubePoly.curve_10501_10502()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 6.535e-13
    data.y[0] = -9.5797e-13
    data.x[1] = -84
    data.y[1] = -33
    data.x[2] = -96
    data.y[2] = 194
    data.x[3] = 794
    data.y[3] = 262
    return data
end

function jubenCubePoly.curve_10502_10503()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 5.1983e-13
    data.y[0] = -4.4557e-14
    data.x[1] = 66
    data.y[1] = 29
    data.x[2] = -222
    data.y[2] = 94
    data.x[3] = 614
    data.y[3] = 423
    return data
end

function jubenCubePoly.curve_10503_10504()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1.0397e-13
    data.y[0] = 7.946e-13
    data.x[1] = 88
    data.y[1] = 19
    data.x[2] = -178
    data.y[2] = 234
    data.x[3] = 458
    data.y[3] = 546
    return data
end

function jubenCubePoly.curve_10504_10505()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.4555e-12
    data.y[0] = 5.7181e-13
    data.x[1] = -64
    data.y[1] = -27
    data.x[2] = 64
    data.y[2] = 294
    data.x[3] = 368
    data.y[3] = 799
    return data
end

function jubenCubePoly.curve_10504_10506()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -9.8025e-13
    data.y[0] = 5.3691e-12
    data.x[1] = 126
    data.y[1] = -48
    data.x[2] = 64
    data.y[2] = 294
    data.x[3] = 368
    data.y[3] = 799
    return data
end

function jubenCubePoly.curve_10505_10506()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.2624e-12
    data.y[0] = -4.5596e-12
    data.x[1] = 46
    data.y[1] = 67
    data.x[2] = 144
    data.y[2] = -88
    data.x[3] = 368
    data.y[3] = 1066
    return data
end

function jubenCubePoly.curve_10506_10511()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 3.3418e-13
    data.y[0] = 3.5126e-12
    data.x[1] = 30
    data.y[1] = -50
    data.x[2] = 144
    data.y[2] = 56
    data.x[3] = 558
    data.y[3] = 1045
    return data
end

function jubenCubePoly.curve_10507_10508()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -2.0496e-12
    data.y[0] = 2.7161e-12
    data.x[1] = 67
    data.y[1] = 9
    data.x[2] = -24
    data.y[2] = 170
    data.x[3] = 802
    data.y[3] = 499
    return data
end

function jubenCubePoly.curve_10508_10509()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 2.0496e-12
    data.y[0] = -2.8034e-12
    data.x[1] = -85
    data.y[1] = 26
    data.x[2] = 172
    data.y[2] = 148
    data.x[3] = 845
    data.y[3] = 678
    return data
end

function jubenCubePoly.curve_10509_10510()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 4.1289e-12
    data.y[0] = 1.4035e-12
    data.x[1] = -63
    data.y[1] = -28
    data.x[2] = 4
    data.y[2] = 158
    data.x[3] = 932
    data.y[3] = 852
    return data
end

function jubenCubePoly.curve_10510_10511()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1.5149e-12
    data.y[0] = 3.6202e-13
    data.x[1] = -43
    data.y[1] = -13
    data.x[2] = -98
    data.y[2] = 82
    data.x[3] = 873
    data.y[3] = 982
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
