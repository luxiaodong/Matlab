local jubenTracePoints = {}
function jubenTracePoints.elapse_10401_10403()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.214
    data.time[2] = 0.3
    data.time[3] = 0.368
    data.time[4] = 0.427
    data.time[5] = 0.483
    data.time[6] = 0.537
    data.time[7] = 0.591
    data.time[8] = 0.647
    data.time[9] = 0.706
    data.time[10] = 0.771
    data.time[11] = 0.851
    return data
end

function jubenTracePoints.elapse_10402_10403()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.165
    data.time[2] = 0.335
    data.time[3] = 0.499
    data.time[4] = 0.65
    data.time[5] = 0.782
    data.time[6] = 0.898
    return data
end

function jubenTracePoints.elapse_10403_10404()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.142
    data.time[2] = 0.236
    data.time[3] = 0.316
    data.time[4] = 0.388
    data.time[5] = 0.456
    data.time[6] = 0.522
    data.time[7] = 0.589
    data.time[8] = 0.657
    data.time[9] = 0.729
    data.time[10] = 0.806
    data.time[11] = 0.895
    return data
end

function jubenTracePoints.elapse_10404_10405()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.139
    data.time[2] = 0.232
    data.time[3] = 0.311
    data.time[4] = 0.381
    data.time[5] = 0.448
    data.time[6] = 0.512
    data.time[7] = 0.576
    data.time[8] = 0.64
    data.time[9] = 0.705
    data.time[10] = 0.772
    data.time[11] = 0.843
    data.time[12] = 0.919
    return data
end

function jubenTracePoints.elapse_10404_10406()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.116
    data.time[2] = 0.219
    data.time[3] = 0.316
    data.time[4] = 0.41
    data.time[5] = 0.504
    data.time[6] = 0.601
    data.time[7] = 0.702
    data.time[8] = 0.807
    data.time[9] = 0.909
    return data
end

function jubenTracePoints.elapse_10406_10407()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.111
    data.time[2] = 0.216
    data.time[3] = 0.313
    data.time[4] = 0.405
    data.time[5] = 0.493
    data.time[6] = 0.58
    data.time[7] = 0.67
    data.time[8] = 0.764
    data.time[9] = 0.869
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