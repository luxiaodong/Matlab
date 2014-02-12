local jubenCubePoly = {}
function jubenCubePoly.curve_2_1()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 250.67
    data.y[0] = 528
    data.x[1] = -332.57
    data.y[1] = -701.71
    data.x[2] = -155.1
    data.y[2] = 374.71
    data.x[3] = 541.53
    data.y[3] = 318.59
    return data
end

function jubenCubePoly.curve_5_4()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -1.8714e-12
    data.y[0] = -2.5063e-12
    data.x[1] = -164
    data.y[1] = 9
    data.x[2] = 140
    data.y[2] = -214
    data.x[3] = 939
    data.y[3] = 596
    return data
end

function jubenCubePoly.curve_4_3()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.3813e-12
    data.y[0] = -1.4852e-12
    data.x[1] = -81
    data.y[1] = 105
    data.x[2] = -70
    data.y[2] = -236
    data.x[3] = 915
    data.y[3] = 391
    return data
end

function jubenCubePoly.curve_3_2()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 1.5632e-12
    data.y[0] = 5.4953e-13
    data.x[1] = 5
    data.y[1] = 112
    data.x[2] = -228
    data.y[2] = -54
    data.x[3] = 764
    data.y[3] = 260
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
