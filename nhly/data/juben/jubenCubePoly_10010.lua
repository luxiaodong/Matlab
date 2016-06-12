local jubenCubePoly = {}
function jubenCubePoly.curve_11001_11004()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 213.33
    data.y[0] = -213.33
    data.x[1] = -680
    data.y[1] = 154.29
    data.x[2] = 396.67
    data.y[2] = 249.05
    data.x[3] = 760
    data.y[3] = 222.29
    return data
end

function jubenCubePoly.curve_11001_11002()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 256
    data.y[0] = 197.33
    data.x[1] = -411.43
    data.y[1] = -403.43
    data.x[2] = 323.43
    data.y[2] = 323.1
    data.x[3] = 760.17
    data.y[3] = 224.27
    return data
end

function jubenCubePoly.curve_11001_11006()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -320
    data.y[0] = 133.33
    data.x[1] = 257.14
    data.y[1] = -234.29
    data.x[2] = -187.14
    data.y[2] = 29.952
    data.x[3] = 761.14
    data.y[3] = 222.61
    return data
end

function jubenCubePoly.curve_11002_11003()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 394.67
    data.y[0] = -186.67
    data.x[1] = -685.71
    data.y[1] = 331.43
    data.x[2] = 333.05
    data.y[2] = 78.238
    data.x[3] = 927.49
    data.y[3] = 340.73
    return data
end

function jubenCubePoly.curve_11004_11005()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = -192
    data.y[0] = 96
    data.x[1] = 176
    data.y[1] = -58.286
    data.x[2] = -324
    data.y[2] = -97.714
    data.x[3] = 687.6
    data.y[3] = 412.71
    return data
end

function jubenCubePoly.curve_11004_11007()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 10.667
    data.y[0] = -26.667
    data.x[1] = -192
    data.y[1] = 65.143
    data.x[2] = 171.33
    data.y[2] = 136.52
    data.x[3] = 689.8
    data.y[3] = 413.44
    return data
end

function jubenCubePoly.curve_11005_11006()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 181.33
    data.y[0] = -69.333
    data.x[1] = -138.29
    data.y[1] = 124.57
    data.x[2] = 116.95
    data.y[2] = -256.24
    data.x[3] = 350.31
    data.y[3] = 353.47
    return data
end

function jubenCubePoly.curve_11005_11007()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 106.67
    data.y[0] = 400
    data.x[1] = 51.429
    data.y[1] = -670.86
    data.x[2] = 171.9
    data.y[2] = 505.86
    data.x[3] = 352.43
    data.y[3] = 354.24
    return data
end

function jubenCubePoly.curve_11005_11008()
    local data = {}
    data.rank = 3
    data.x = {}
    data.y = {}
    data.x[0] = 42.667
    data.y[0] = -229.33
    data.x[1] = 11.429
    data.y[1] = 238.86
    data.x[2] = 5.9048
    data.y[2] = 179.48
    data.x[3] = 351.43
    data.y[3] = 352.76
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
