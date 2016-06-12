local jubenTracePoints = {}
function jubenTracePoints.elapse_10104_10105()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.165
    data.time[2] = 0.276
    data.time[3] = 0.372
    data.time[4] = 0.461
    data.time[5] = 0.549
    data.time[6] = 0.639
    data.time[7] = 0.735
    data.time[8] = 0.847
    return data
end

function jubenTracePoints.elapse_10101_10102()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.157
    data.time[2] = 0.246
    data.time[3] = 0.316
    data.time[4] = 0.378
    data.time[5] = 0.434
    data.time[6] = 0.489
    data.time[7] = 0.543
    data.time[8] = 0.597
    data.time[9] = 0.653
    data.time[10] = 0.712
    data.time[11] = 0.778
    data.time[12] = 0.858
    return data
end

function jubenTracePoints.elapse_10102_10103()
    local data = {}
    data.count = 5
    data.time = {}
    data.time[1] = 0.23
    data.time[2] = 0.409
    data.time[3] = 0.562
    data.time[4] = 0.706
    data.time[5] = 0.849
    return data
end

function jubenTracePoints.elapse_10103_10104()
    local data = {}
    data.count = 4
    data.time = {}
    data.time[1] = 0.125
    data.time[2] = 0.292
    data.time[3] = 0.528
    data.time[4] = 0.795
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