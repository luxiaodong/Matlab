local jubenTracePoints = {}
function jubenTracePoints.elapse_10307_10308()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.08
    data.time[2] = 0.178
    data.time[3] = 0.296
    data.time[4] = 0.427
    data.time[5] = 0.556
    data.time[6] = 0.673
    data.time[7] = 0.774
    data.time[8] = 0.861
    data.time[9] = 0.935
    return data
end

function jubenTracePoints.elapse_10301_10302()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.084
    data.time[2] = 0.205
    data.time[3] = 0.401
    data.time[4] = 0.61
    data.time[5] = 0.738
    data.time[6] = 0.827
    data.time[7] = 0.894
    data.time[8] = 0.95
    return data
end

function jubenTracePoints.elapse_10302_10303()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.115
    data.time[2] = 0.212
    data.time[3] = 0.3
    data.time[4] = 0.385
    data.time[5] = 0.47
    data.time[6] = 0.557
    data.time[7] = 0.65
    data.time[8] = 0.752
    data.time[9] = 0.871
    return data
end

function jubenTracePoints.elapse_10302_10304()
    local data = {}
    data.count = 10
    data.time = {}
    data.time[1] = 0.061
    data.time[2] = 0.131
    data.time[3] = 0.209
    data.time[4] = 0.299
    data.time[5] = 0.402
    data.time[6] = 0.517
    data.time[7] = 0.638
    data.time[8] = 0.751
    data.time[9] = 0.849
    data.time[10] = 0.93
    return data
end

function jubenTracePoints.elapse_10303_10306()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.14
    data.time[2] = 0.243
    data.time[3] = 0.33
    data.time[4] = 0.409
    data.time[5] = 0.483
    data.time[6] = 0.553
    data.time[7] = 0.62
    data.time[8] = 0.686
    data.time[9] = 0.75
    data.time[10] = 0.814
    data.time[11] = 0.876
    data.time[12] = 0.938
    return data
end

function jubenTracePoints.elapse_10304_10306()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.127
    data.time[2] = 0.251
    data.time[3] = 0.368
    data.time[4] = 0.474
    data.time[5] = 0.57
    data.time[6] = 0.653
    data.time[7] = 0.727
    data.time[8] = 0.793
    data.time[9] = 0.852
    data.time[10] = 0.905
    data.time[11] = 0.954
    return data
end

function jubenTracePoints.elapse_10305_10306()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.155
    data.time[2] = 0.268
    data.time[3] = 0.361
    data.time[4] = 0.445
    data.time[5] = 0.526
    data.time[6] = 0.608
    data.time[7] = 0.694
    data.time[8] = 0.789
    data.time[9] = 0.894
    return data
end

function jubenTracePoints.elapse_10306_10307()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.202
    data.time[2] = 0.305
    data.time[3] = 0.388
    data.time[4] = 0.463
    data.time[5] = 0.533
    data.time[6] = 0.6
    data.time[7] = 0.666
    data.time[8] = 0.731
    data.time[9] = 0.797
    data.time[10] = 0.863
    data.time[11] = 0.931
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