local jubenTracePoints = {}
function jubenTracePoints.elapse_2_1()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.069
    data.time[2] = 0.148
    data.time[3] = 0.233
    data.time[4] = 0.319
    data.time[5] = 0.404
    data.time[6] = 0.487
    data.time[7] = 0.572
    data.time[8] = 0.658
    data.time[9] = 0.743
    data.time[10] = 0.822
    data.time[11] = 0.89
    data.time[12] = 0.949
    return data
end

function jubenTracePoints.elapse_5_4()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.102
    data.time[2] = 0.211
    data.time[3] = 0.328
    data.time[4] = 0.449
    data.time[5] = 0.57
    data.time[6] = 0.688
    data.time[7] = 0.799
    data.time[8] = 0.902
    return data
end

function jubenTracePoints.elapse_4_3()
    local data = {}
    data.count = 7
    data.time = {}
    data.time[1] = 0.112
    data.time[2] = 0.231
    data.time[3] = 0.358
    data.time[4] = 0.49
    data.time[5] = 0.624
    data.time[6] = 0.755
    data.time[7] = 0.88
    return data
end

function jubenTracePoints.elapse_3_2()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.114
    data.time[2] = 0.231
    data.time[3] = 0.349
    data.time[4] = 0.465
    data.time[5] = 0.58
    data.time[6] = 0.691
    data.time[7] = 0.798
    data.time[8] = 0.9
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