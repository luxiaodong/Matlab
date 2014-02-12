local jubenTracePoints = {}
function jubenTracePoints.elapse_1_5()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.056
    data.time[2] = 0.119
    data.time[3] = 0.19
    data.time[4] = 0.268
    data.time[5] = 0.352
    data.time[6] = 0.441
    data.time[7] = 0.533
    data.time[8] = 0.625
    data.time[9] = 0.72
    data.time[10] = 0.816
    data.time[11] = 0.91
    return data
end

function jubenTracePoints.elapse_5_4()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.1
    data.time[2] = 0.212
    data.time[3] = 0.332
    data.time[4] = 0.45
    data.time[5] = 0.562
    data.time[6] = 0.665
    data.time[7] = 0.759
    data.time[8] = 0.845
    data.time[9] = 0.925
    return data
end

function jubenTracePoints.elapse_4_3()
    local data = {}
    data.count = 7
    data.time = {}
    data.time[1] = 0.104
    data.time[2] = 0.232
    data.time[3] = 0.392
    data.time[4] = 0.564
    data.time[5] = 0.711
    data.time[6] = 0.827
    data.time[7] = 0.92
    return data
end

function jubenTracePoints.elapse_3_2()
    local data = {}
    data.count = 7
    data.time = {}
    data.time[1] = 0.121
    data.time[2] = 0.241
    data.time[3] = 0.363
    data.time[4] = 0.492
    data.time[5] = 0.627
    data.time[6] = 0.765
    data.time[7] = 0.891
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