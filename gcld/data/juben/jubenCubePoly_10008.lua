local jubenCubePoly = {}
function jubenCubePoly.curve_7_6()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -80
    data.y[0] = -10.667
    data.x[1] = 22.857
    data.y[1] = 424
    data.x[2] = -279.86
    data.y[2] = -429.33
    data.x[3] = 1965.4
    data.y[3] = 249.8
    return data
end

function jubenCubePoly.curve_6_2()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 64
    data.y[0] = -80
    data.x[1] = -434.29
    data.y[1] = 236.57
    data.x[2] = 450.29
    data.y[2] = 40.429
    data.x[3] = 1629.1
    data.y[3] = 234.87
    return data
end

function jubenCubePoly.curve_6_1()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 6.2268e-12
    data.y[0] = -8.4287e-13
    data.x[1] = 16
    data.y[1] = 25
    data.x[2] = -336
    data.y[2] = 60
    data.x[3] = 1629
    data.y[3] = 235
    return data
end

function jubenCubePoly.curve_1_4()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 9.1156e-13
    data.y[0] = -7.2776e-13
    data.x[1] = 14
    data.y[1] = -84
    data.x[2] = -340
    data.y[2] = 48
    data.x[3] = 1309
    data.y[3] = 320
    return data
end

function jubenCubePoly.curve_1_3()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.6337e-12
    data.y[0] = 6.1637e-13
    data.x[1] = 86
    data.y[1] = 21
    data.x[2] = -332
    data.y[2] = 182
    data.x[3] = 1309
    data.y[3] = 320
    return data
end

function jubenCubePoly.curve_4_3()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1.9902e-12
    data.y[0] = 2.265e-13
    data.x[1] = -118
    data.y[1] = 23
    data.x[2] = 198
    data.y[2] = 216
    data.x[3] = 983
    data.y[3] = 284
    return data
end

function jubenCubePoly.curve_4_8()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -3.3418e-13
    data.y[0] = 1.3367e-13
    data.x[1] = -15
    data.y[1] = -27
    data.x[2] = -240
    data.y[2] = 174
    data.x[3] = 983
    data.y[3] = 284
    return data
end

function jubenCubePoly.curve_3_8()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.8194e-13
    data.y[0] = 4.0287e-13
    data.x[1] = -17
    data.y[1] = 8
    data.x[2] = -318
    data.y[2] = -100
    data.x[3] = 1063
    data.y[3] = 523
    return data
end

function jubenCubePoly.curve_5_7()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 4.1586e-12
    data.y[0] = -1.0545e-12
    data.x[1] = -129
    data.y[1] = 53
    data.x[2] = 132
    data.y[2] = -286
    data.x[3] = 1963
    data.y[3] = 484
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
