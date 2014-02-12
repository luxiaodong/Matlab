local jubenCubePoly = {}
function jubenCubePoly.curve_1_5()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 15.046
    data.y[0] = 24.306
    data.x[1] = -536.41
    data.y[1] = 38.988
    data.x[2] = 531.08
    data.y[2] = 106.59
    data.x[3] = 708.46
    data.y[3] = 266.95
    return data
end

function jubenCubePoly.curve_1_2()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 6.108e-13
    data.y[0] = 1.5298e-12
    data.x[1] = -13
    data.y[1] = 50
    data.x[2] = 246
    data.y[2] = 80
    data.x[3] = 709
    data.y[3] = 266
    return data
end

function jubenCubePoly.curve_1_7()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -8.0945e-13
    data.y[0] = -9.0599e-13
    data.x[1] = -35
    data.y[1] = 70
    data.x[2] = -252
    data.y[2] = -150
    data.x[3] = 709
    data.y[3] = 266
    return data
end

function jubenCubePoly.curve_2_3()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 234.67
    data.y[0] = 101.33
    data.x[1] = -509.71
    data.y[1] = -88
    data.x[2] = 291.05
    data.y[2] = 157.67
    data.x[3] = 942.89
    data.y[3] = 395.5
    return data
end

function jubenCubePoly.curve_5_6()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 2.7031e-12
    data.y[0] = -9.777e-13
    data.x[1] = 83
    data.y[1] = 1
    data.x[2] = -362
    data.y[2] = -84
    data.x[3] = 719
    data.y[3] = 436
    return data
end

function jubenCubePoly.curve_5_8()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -5.0498e-12
    data.y[0] = -2.5546e-12
    data.x[1] = -225
    data.y[1] = -51
    data.x[2] = 146
    data.y[2] = 178
    data.x[3] = 719
    data.y[3] = 436
    return data
end

function jubenCubePoly.curve_6_7()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1.0397e-13
    data.y[0] = 9.097e-13
    data.x[1] = 102
    data.y[1] = -15
    data.x[2] = -120
    data.y[2] = -152
    data.x[3] = 440
    data.y[3] = 353
    return data
end

function jubenCubePoly.curve_6_8()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -309.33
    data.y[0] = 181.33
    data.x[1] = 769.14
    data.y[1] = -347.43
    data.x[2] = -259.81
    data.y[2] = 376.1
    data.x[3] = 439.14
    data.y[3] = 352.77
    return data
end

function jubenCubePoly.curve_6_4()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 7.1291e-13
    data.y[0] = -1.0916e-12
    data.x[1] = 170
    data.y[1] = 12
    data.x[2] = -214
    data.y[2] = 188
    data.x[3] = 440
    data.y[3] = 353
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
