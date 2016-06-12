local jubenTracePoints = {}
function jubenTracePoints.elapse_10602_10606()
    local data = {}
    data.count = 10
    data.time = {}
    data.time[1] = 0.085
    data.time[2] = 0.17
    data.time[3] = 0.255
    data.time[4] = 0.341
    data.time[5] = 0.428
    data.time[6] = 0.517
    data.time[7] = 0.607
    data.time[8] = 0.7
    data.time[9] = 0.795
    data.time[10] = 0.895
    return data
end

function jubenTracePoints.elapse_10601_10602()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.129
    data.time[2] = 0.268
    data.time[3] = 0.413
    data.time[4] = 0.563
    data.time[5] = 0.713
    data.time[6] = 0.859
    return data
end

function jubenTracePoints.elapse_10602_10603()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.121
    data.time[2] = 0.258
    data.time[3] = 0.414
    data.time[4] = 0.586
    data.time[5] = 0.75
    data.time[6] = 0.887
    return data
end

function jubenTracePoints.elapse_10603_10604()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.14
    data.time[2] = 0.256
    data.time[3] = 0.358
    data.time[4] = 0.451
    data.time[5] = 0.538
    data.time[6] = 0.624
    data.time[7] = 0.711
    data.time[8] = 0.799
    data.time[9] = 0.894
    return data
end

function jubenTracePoints.elapse_10604_10605()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.087
    data.time[2] = 0.191
    data.time[3] = 0.31
    data.time[4] = 0.44
    data.time[5] = 0.566
    data.time[6] = 0.679
    data.time[7] = 0.777
    data.time[8] = 0.861
    data.time[9] = 0.934
    return data
end

function jubenTracePoints.elapse_10605_10607()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.085
    data.time[2] = 0.188
    data.time[3] = 0.312
    data.time[4] = 0.451
    data.time[5] = 0.591
    data.time[6] = 0.719
    data.time[7] = 0.828
    data.time[8] = 0.92
    return data
end

function jubenTracePoints.elapse_10606_10607()
    local data = {}
    data.count = 5
    data.time = {}
    data.time[1] = 0.236
    data.time[2] = 0.387
    data.time[3] = 0.519
    data.time[4] = 0.65
    data.time[5] = 0.797
    return data
end

function jubenTracePoints.elapse_10607_10608()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.127
    data.time[2] = 0.279
    data.time[3] = 0.446
    data.time[4] = 0.609
    data.time[5] = 0.756
    data.time[6] = 0.885
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