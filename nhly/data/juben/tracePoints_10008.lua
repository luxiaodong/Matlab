local jubenTracePoints = {}
function jubenTracePoints.elapse_10802_10803()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.066
    data.time[2] = 0.135
    data.time[3] = 0.206
    data.time[4] = 0.278
    data.time[5] = 0.352
    data.time[6] = 0.426
    data.time[7] = 0.502
    data.time[8] = 0.579
    data.time[9] = 0.659
    data.time[10] = 0.74
    data.time[11] = 0.825
    data.time[12] = 0.912
    return data
end

function jubenTracePoints.elapse_10803_10804()
    local data = {}
    data.count = 7
    data.time = {}
    data.time[1] = 0.127
    data.time[2] = 0.252
    data.time[3] = 0.377
    data.time[4] = 0.506
    data.time[5] = 0.637
    data.time[6] = 0.768
    data.time[7] = 0.89
    return data
end

function jubenTracePoints.elapse_10803_10805()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.095
    data.time[2] = 0.186
    data.time[3] = 0.275
    data.time[4] = 0.363
    data.time[5] = 0.452
    data.time[6] = 0.543
    data.time[7] = 0.639
    data.time[8] = 0.742
    data.time[9] = 0.859
    return data
end

function jubenTracePoints.elapse_10805_10806()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.066
    data.time[2] = 0.138
    data.time[3] = 0.213
    data.time[4] = 0.294
    data.time[5] = 0.379
    data.time[6] = 0.468
    data.time[7] = 0.559
    data.time[8] = 0.651
    data.time[9] = 0.742
    data.time[10] = 0.831
    data.time[11] = 0.917
    return data
end

function jubenTracePoints.elapse_10805_10807()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.075
    data.time[2] = 0.153
    data.time[3] = 0.233
    data.time[4] = 0.316
    data.time[5] = 0.402
    data.time[6] = 0.491
    data.time[7] = 0.584
    data.time[8] = 0.68
    data.time[9] = 0.773
    data.time[10] = 0.858
    data.time[11] = 0.933
    return data
end

function jubenTracePoints.elapse_10806_10807()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.139
    data.time[2] = 0.265
    data.time[3] = 0.382
    data.time[4] = 0.493
    data.time[5] = 0.599
    data.time[6] = 0.702
    data.time[7] = 0.802
    data.time[8] = 0.901
    return data
end

function jubenTracePoints.elapse_10806_10808()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.1
    data.time[2] = 0.233
    data.time[3] = 0.401
    data.time[4] = 0.567
    data.time[5] = 0.697
    data.time[6] = 0.796
    data.time[7] = 0.875
    data.time[8] = 0.941
    return data
end

function jubenTracePoints.elapse_10807_10808()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.056
    data.time[2] = 0.119
    data.time[3] = 0.191
    data.time[4] = 0.271
    data.time[5] = 0.358
    data.time[6] = 0.45
    data.time[7] = 0.543
    data.time[8] = 0.633
    data.time[9] = 0.72
    data.time[10] = 0.801
    data.time[11] = 0.874
    data.time[12] = 0.94
    return data
end

function jubenTracePoints.elapse_10801_10802()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.106
    data.time[2] = 0.235
    data.time[3] = 0.393
    data.time[4] = 0.567
    data.time[5] = 0.732
    data.time[6] = 0.876
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