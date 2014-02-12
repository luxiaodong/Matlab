local jubenTracePoints = {}
function jubenTracePoints.elapse_10501_10502()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.125
    data.time[2] = 0.248
    data.time[3] = 0.367
    data.time[4] = 0.483
    data.time[5] = 0.595
    data.time[6] = 0.702
    data.time[7] = 0.805
    data.time[8] = 0.904
    return data
end

function jubenTracePoints.elapse_10502_10503()
    local data = {}
    data.count = 7
    data.time = {}
    data.time[1] = 0.106
    data.time[2] = 0.218
    data.time[3] = 0.335
    data.time[4] = 0.458
    data.time[5] = 0.586
    data.time[6] = 0.719
    data.time[7] = 0.857
    return data
end

function jubenTracePoints.elapse_10503_10504()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.094
    data.time[2] = 0.19
    data.time[3] = 0.288
    data.time[4] = 0.387
    data.time[5] = 0.488
    data.time[6] = 0.59
    data.time[7] = 0.693
    data.time[8] = 0.795
    data.time[9] = 0.897
    return data
end

function jubenTracePoints.elapse_10504_10505()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.09
    data.time[2] = 0.183
    data.time[3] = 0.278
    data.time[4] = 0.375
    data.time[5] = 0.474
    data.time[6] = 0.576
    data.time[7] = 0.679
    data.time[8] = 0.784
    data.time[9] = 0.891
    return data
end

function jubenTracePoints.elapse_10504_10506()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.088
    data.time[2] = 0.178
    data.time[3] = 0.267
    data.time[4] = 0.356
    data.time[5] = 0.443
    data.time[6] = 0.529
    data.time[7] = 0.613
    data.time[8] = 0.695
    data.time[9] = 0.774
    data.time[10] = 0.851
    data.time[11] = 0.926
    return data
end

function jubenTracePoints.elapse_10505_10506()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.164
    data.time[2] = 0.323
    data.time[3] = 0.474
    data.time[4] = 0.617
    data.time[5] = 0.752
    data.time[6] = 0.879
    return data
end

function jubenTracePoints.elapse_10506_10511()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.161
    data.time[2] = 0.316
    data.time[3] = 0.466
    data.time[4] = 0.609
    data.time[5] = 0.745
    data.time[6] = 0.875
    return data
end

function jubenTracePoints.elapse_10507_10508()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.155
    data.time[2] = 0.309
    data.time[3] = 0.458
    data.time[4] = 0.602
    data.time[5] = 0.741
    data.time[6] = 0.873
    return data
end

function jubenTracePoints.elapse_10508_10509()
    local data = {}
    data.count = 7
    data.time = {}
    data.time[1] = 0.113
    data.time[2] = 0.231
    data.time[3] = 0.354
    data.time[4] = 0.481
    data.time[5] = 0.611
    data.time[6] = 0.741
    data.time[7] = 0.871
    return data
end

function jubenTracePoints.elapse_10509_10510()
    local data = {}
    data.count = 4
    data.time = {}
    data.time[1] = 0.193
    data.time[2] = 0.396
    data.time[3] = 0.603
    data.time[4] = 0.806
    return data
end

function jubenTracePoints.elapse_10510_10511()
    local data = {}
    data.count = 5
    data.time = {}
    data.time[1] = 0.197
    data.time[2] = 0.38
    data.time[3] = 0.55
    data.time[4] = 0.709
    data.time[5] = 0.858
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