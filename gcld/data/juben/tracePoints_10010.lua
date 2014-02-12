local jubenTracePoints = {}
function jubenTracePoints.elapse_11001_11004()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.052
    data.time[2] = 0.11
    data.time[3] = 0.178
    data.time[4] = 0.262
    data.time[5] = 0.374
    data.time[6] = 0.529
    data.time[7] = 0.661
    data.time[8] = 0.755
    data.time[9] = 0.829
    data.time[10] = 0.892
    data.time[11] = 0.948
    return data
end

function jubenTracePoints.elapse_11001_11002()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.103
    data.time[2] = 0.206
    data.time[3] = 0.308
    data.time[4] = 0.41
    data.time[5] = 0.511
    data.time[6] = 0.611
    data.time[7] = 0.71
    data.time[8] = 0.807
    data.time[9] = 0.904
    return data
end

function jubenTracePoints.elapse_11001_11006()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.085
    data.time[2] = 0.171
    data.time[3] = 0.256
    data.time[4] = 0.342
    data.time[5] = 0.427
    data.time[6] = 0.511
    data.time[7] = 0.595
    data.time[8] = 0.678
    data.time[9] = 0.76
    data.time[10] = 0.84
    data.time[11] = 0.92
    return data
end

function jubenTracePoints.elapse_11002_11003()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.099
    data.time[2] = 0.245
    data.time[3] = 0.449
    data.time[4] = 0.626
    data.time[5] = 0.769
    data.time[6] = 0.892
    return data
end

function jubenTracePoints.elapse_11004_11005()
    local data = {}
    data.count = 10
    data.time = {}
    data.time[1] = 0.072
    data.time[2] = 0.147
    data.time[3] = 0.224
    data.time[4] = 0.305
    data.time[5] = 0.389
    data.time[6] = 0.476
    data.time[7] = 0.568
    data.time[8] = 0.666
    data.time[9] = 0.769
    data.time[10] = 0.879
    return data
end

function jubenTracePoints.elapse_11004_11007()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.133
    data.time[2] = 0.303
    data.time[3] = 0.496
    data.time[4] = 0.662
    data.time[5] = 0.795
    data.time[6] = 0.904
    return data
end

function jubenTracePoints.elapse_11005_11006()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.135
    data.time[2] = 0.279
    data.time[3] = 0.429
    data.time[4] = 0.58
    data.time[5] = 0.727
    data.time[6] = 0.867
    return data
end

function jubenTracePoints.elapse_11005_11007()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.064
    data.time[2] = 0.144
    data.time[3] = 0.245
    data.time[4] = 0.352
    data.time[5] = 0.447
    data.time[6] = 0.531
    data.time[7] = 0.606
    data.time[8] = 0.676
    data.time[9] = 0.743
    data.time[10] = 0.808
    data.time[11] = 0.872
    data.time[12] = 0.935
    return data
end

function jubenTracePoints.elapse_11005_11008()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.091
    data.time[2] = 0.19
    data.time[3] = 0.297
    data.time[4] = 0.412
    data.time[5] = 0.534
    data.time[6] = 0.658
    data.time[7] = 0.778
    data.time[8] = 0.893
    return data
end

function jubenTracePoints.elapse(cityID1, cityID2)
    local funName = "elapse_" .. tostring(cityID1) .. "_" .. tostring(cityID2)
     if cityID1 > cityID2 then
        funName = "elapse_" .. tostring(cityID2) .. "_" .. tostring(cityID1)
     end
    if jubenTracePoints[funName] == nil then
        return nil
    end
    return jubenTracePoints[funName]();
end


return jubenTracePoints