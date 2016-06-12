local jubenTracePoints = {}
function jubenTracePoints.elapse_11001_11004()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.058
    data.time[2] = 0.124
    data.time[3] = 0.199
    data.time[4] = 0.284
    data.time[5] = 0.375
    data.time[6] = 0.469
    data.time[7] = 0.564
    data.time[8] = 0.656
    data.time[9] = 0.746
    data.time[10] = 0.834
    data.time[11] = 0.919
    return data
end

function jubenTracePoints.elapse_11001_11002()
    local data = {}
    data.count = 7
    data.time = {}
    data.time[1] = 0.061
    data.time[2] = 0.135
    data.time[3] = 0.227
    data.time[4] = 0.354
    data.time[5] = 0.543
    data.time[6] = 0.749
    data.time[7] = 0.895
    return data
end

function jubenTracePoints.elapse_11001_11006()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.171
    data.time[2] = 0.362
    data.time[3] = 0.511
    data.time[4] = 0.625
    data.time[5] = 0.715
    data.time[6] = 0.789
    data.time[7] = 0.851
    data.time[8] = 0.906
    data.time[9] = 0.955
    return data
end

function jubenTracePoints.elapse_11002_11003()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.084
    data.time[2] = 0.193
    data.time[3] = 0.308
    data.time[4] = 0.412
    data.time[5] = 0.506
    data.time[6] = 0.596
    data.time[7] = 0.687
    data.time[8] = 0.783
    data.time[9] = 0.887
    return data
end

function jubenTracePoints.elapse_11004_11005()
    local data = {}
    data.count = 13
    data.time = {}
    data.time[1] = 0.076
    data.time[2] = 0.156
    data.time[3] = 0.24
    data.time[4] = 0.326
    data.time[5] = 0.412
    data.time[6] = 0.496
    data.time[7] = 0.577
    data.time[8] = 0.652
    data.time[9] = 0.722
    data.time[10] = 0.787
    data.time[11] = 0.846
    data.time[12] = 0.901
    data.time[13] = 0.952
    return data
end

function jubenTracePoints.elapse_11004_11007()
    local data = {}
    data.count = 7
    data.time = {}
    data.time[1] = 0.121
    data.time[2] = 0.256
    data.time[3] = 0.397
    data.time[4] = 0.537
    data.time[5] = 0.668
    data.time[6] = 0.788
    data.time[7] = 0.898
    return data
end

function jubenTracePoints.elapse_11005_11006()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.099
    data.time[2] = 0.21
    data.time[3] = 0.33
    data.time[4] = 0.455
    data.time[5] = 0.576
    data.time[6] = 0.685
    data.time[7] = 0.78
    data.time[8] = 0.863
    data.time[9] = 0.935
    return data
end

function jubenTracePoints.elapse_11005_11007()
    local data = {}
    data.count = 15
    data.time = {}
    data.time[1] = 0.052
    data.time[2] = 0.111
    data.time[3] = 0.179
    data.time[4] = 0.256
    data.time[5] = 0.339
    data.time[6] = 0.425
    data.time[7] = 0.506
    data.time[8] = 0.582
    data.time[9] = 0.651
    data.time[10] = 0.714
    data.time[11] = 0.771
    data.time[12] = 0.824
    data.time[13] = 0.873
    data.time[14] = 0.918
    data.time[15] = 0.959
    return data
end

function jubenTracePoints.elapse_11005_11008()
    local data = {}
    data.count = 7
    data.time = {}
    data.time[1] = 0.129
    data.time[2] = 0.238
    data.time[3] = 0.341
    data.time[4] = 0.443
    data.time[5] = 0.549
    data.time[6] = 0.668
    data.time[7] = 0.815
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