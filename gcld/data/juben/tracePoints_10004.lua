local jubenTracePoints = {}
function jubenTracePoints.elapse_10401_10403()
    local data = {}
    data.count = 14
    data.time = {}
    data.time[1] = 0.07
    data.time[2] = 0.14
    data.time[3] = 0.209
    data.time[4] = 0.277
    data.time[5] = 0.345
    data.time[6] = 0.413
    data.time[7] = 0.48
    data.time[8] = 0.547
    data.time[9] = 0.613
    data.time[10] = 0.678
    data.time[11] = 0.743
    data.time[12] = 0.808
    data.time[13] = 0.872
    data.time[14] = 0.935
    return data
end

function jubenTracePoints.elapse_10402_10403()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.063
    data.time[2] = 0.13
    data.time[3] = 0.2
    data.time[4] = 0.275
    data.time[5] = 0.353
    data.time[6] = 0.436
    data.time[7] = 0.523
    data.time[8] = 0.615
    data.time[9] = 0.71
    data.time[10] = 0.807
    data.time[11] = 0.904
    return data
end

function jubenTracePoints.elapse_10403_10404()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.073
    data.time[2] = 0.147
    data.time[3] = 0.224
    data.time[4] = 0.302
    data.time[5] = 0.38
    data.time[6] = 0.46
    data.time[7] = 0.539
    data.time[8] = 0.619
    data.time[9] = 0.697
    data.time[10] = 0.775
    data.time[11] = 0.851
    data.time[12] = 0.926
    return data
end

function jubenTracePoints.elapse_10404_10405()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.101
    data.time[2] = 0.203
    data.time[3] = 0.306
    data.time[4] = 0.409
    data.time[5] = 0.511
    data.time[6] = 0.612
    data.time[7] = 0.712
    data.time[8] = 0.809
    data.time[9] = 0.905
    return data
end

function jubenTracePoints.elapse_10404_10406()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.092
    data.time[2] = 0.191
    data.time[3] = 0.299
    data.time[4] = 0.414
    data.time[5] = 0.534
    data.time[6] = 0.657
    data.time[7] = 0.777
    data.time[8] = 0.892
    return data
end

function jubenTracePoints.elapse_10406_10407()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.084
    data.time[2] = 0.177
    data.time[3] = 0.28
    data.time[4] = 0.392
    data.time[5] = 0.51
    data.time[6] = 0.626
    data.time[7] = 0.733
    data.time[8] = 0.831
    data.time[9] = 0.919
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