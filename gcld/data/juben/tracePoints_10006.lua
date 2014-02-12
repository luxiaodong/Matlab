local jubenTracePoints = {}
function jubenTracePoints.elapse_10602_10606()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.139
    data.time[2] = 0.261
    data.time[3] = 0.359
    data.time[4] = 0.447
    data.time[5] = 0.53
    data.time[6] = 0.614
    data.time[7] = 0.703
    data.time[8] = 0.799
    data.time[9] = 0.902
    return data
end

function jubenTracePoints.elapse_10601_10602()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.115
    data.time[2] = 0.238
    data.time[3] = 0.371
    data.time[4] = 0.513
    data.time[5] = 0.666
    data.time[6] = 0.829
    return data
end

function jubenTracePoints.elapse_10602_10603()
    local data = {}
    data.count = 5
    data.time = {}
    data.time[1] = 0.15
    data.time[2] = 0.318
    data.time[3] = 0.498
    data.time[4] = 0.679
    data.time[5] = 0.848
    return data
end

function jubenTracePoints.elapse_10603_10604()
    local data = {}
    data.count = 7
    data.time = {}
    data.time[1] = 0.096
    data.time[2] = 0.202
    data.time[3] = 0.319
    data.time[4] = 0.449
    data.time[5] = 0.59
    data.time[6] = 0.734
    data.time[7] = 0.872
    return data
end

function jubenTracePoints.elapse_10604_10605()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.081
    data.time[2] = 0.182
    data.time[3] = 0.29
    data.time[4] = 0.391
    data.time[5] = 0.488
    data.time[6] = 0.587
    data.time[7] = 0.692
    data.time[8] = 0.808
    data.time[9] = 0.916
    return data
end

function jubenTracePoints.elapse_10605_10607()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.107
    data.time[2] = 0.218
    data.time[3] = 0.33
    data.time[4] = 0.444
    data.time[5] = 0.557
    data.time[6] = 0.67
    data.time[7] = 0.782
    data.time[8] = 0.892
    return data
end

function jubenTracePoints.elapse_10606_10607()
    local data = {}
    data.count = 5
    data.time = {}
    data.time[1] = 0.167
    data.time[2] = 0.336
    data.time[3] = 0.505
    data.time[4] = 0.673
    data.time[5] = 0.838
    return data
end

function jubenTracePoints.elapse_10607_10608()
    local data = {}
    data.count = 5
    data.time = {}
    data.time[1] = 0.18
    data.time[2] = 0.36
    data.time[3] = 0.534
    data.time[4] = 0.7
    data.time[5] = 0.854
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