local jubenTracePoints = {}
function jubenTracePoints.elapse_10501_10502()
    local data = {}
    data.count = 15
    data.time = {}
    data.time[1] = 0.034
    data.time[2] = 0.071
    data.time[3] = 0.111
    data.time[4] = 0.155
    data.time[5] = 0.202
    data.time[6] = 0.255
    data.time[7] = 0.314
    data.time[8] = 0.38
    data.time[9] = 0.455
    data.time[10] = 0.538
    data.time[11] = 0.625
    data.time[12] = 0.712
    data.time[13] = 0.794
    data.time[14] = 0.869
    data.time[15] = 0.937
    return data
end

function jubenTracePoints.elapse_10502_10503()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.121
    data.time[2] = 0.249
    data.time[3] = 0.386
    data.time[4] = 0.531
    data.time[5] = 0.683
    data.time[6] = 0.84
    return data
end

function jubenTracePoints.elapse_10503_10504()
    local data = {}
    data.count = 4
    data.time = {}
    data.time[1] = 0.271
    data.time[2] = 0.542
    data.time[3] = 0.739
    data.time[4] = 0.884
    return data
end

function jubenTracePoints.elapse_10504_10505()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.147
    data.time[2] = 0.267
    data.time[3] = 0.375
    data.time[4] = 0.478
    data.time[5] = 0.579
    data.time[6] = 0.68
    data.time[7] = 0.785
    data.time[8] = 0.892
    return data
end

function jubenTracePoints.elapse_10504_10506()
    local data = {}
    data.count = 10
    data.time = {}
    data.time[1] = 0.088
    data.time[2] = 0.178
    data.time[3] = 0.269
    data.time[4] = 0.36
    data.time[5] = 0.451
    data.time[6] = 0.543
    data.time[7] = 0.634
    data.time[8] = 0.726
    data.time[9] = 0.817
    data.time[10] = 0.908
    return data
end

function jubenTracePoints.elapse_10505_10506()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.089
    data.time[2] = 0.191
    data.time[3] = 0.31
    data.time[4] = 0.449
    data.time[5] = 0.61
    data.time[6] = 0.794
    return data
end

function jubenTracePoints.elapse_10506_10511()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.089
    data.time[2] = 0.196
    data.time[3] = 0.327
    data.time[4] = 0.49
    data.time[5] = 0.681
    data.time[6] = 0.86
    return data
end

function jubenTracePoints.elapse_10507_10508()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.078
    data.time[2] = 0.166
    data.time[3] = 0.262
    data.time[4] = 0.364
    data.time[5] = 0.471
    data.time[6] = 0.577
    data.time[7] = 0.683
    data.time[8] = 0.788
    data.time[9] = 0.893
    return data
end

function jubenTracePoints.elapse_10508_10509()
    local data = {}
    data.count = 4
    data.time = {}
    data.time[1] = 0.27
    data.time[2] = 0.45
    data.time[3] = 0.612
    data.time[4] = 0.788
    return data
end

function jubenTracePoints.elapse_10509_10510()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.087
    data.time[2] = 0.193
    data.time[3] = 0.32
    data.time[4] = 0.47
    data.time[5] = 0.656
    data.time[6] = 0.861
    return data
end

function jubenTracePoints.elapse_10510_10511()
    local data = {}
    data.count = 6
    data.time = {}
    data.time[1] = 0.083
    data.time[2] = 0.178
    data.time[3] = 0.292
    data.time[4] = 0.435
    data.time[5] = 0.629
    data.time[6] = 0.843
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