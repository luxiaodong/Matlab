local jubenTracePoints = {}
function jubenTracePoints.elapse_10206_10207()
    local data = {}
    data.count = 17
    data.time = {}
    data.time[1] = 0.069
    data.time[2] = 0.138
    data.time[3] = 0.203
    data.time[4] = 0.263
    data.time[5] = 0.32
    data.time[6] = 0.374
    data.time[7] = 0.425
    data.time[8] = 0.476
    data.time[9] = 0.525
    data.time[10] = 0.574
    data.time[11] = 0.623
    data.time[12] = 0.672
    data.time[13] = 0.722
    data.time[14] = 0.774
    data.time[15] = 0.827
    data.time[16] = 0.882
    data.time[17] = 0.939
    return data
end

function jubenTracePoints.elapse_10201_10202()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.037
    data.time[2] = 0.081
    data.time[3] = 0.133
    data.time[4] = 0.197
    data.time[5] = 0.278
    data.time[6] = 0.37
    data.time[7] = 0.462
    data.time[8] = 0.548
    data.time[9] = 0.631
    data.time[10] = 0.714
    data.time[11] = 0.801
    data.time[12] = 0.898
    return data
end

function jubenTracePoints.elapse_10201_10205()
    local data = {}
    data.count = 14
    data.time = {}
    data.time[1] = 0.054
    data.time[2] = 0.111
    data.time[3] = 0.168
    data.time[4] = 0.227
    data.time[5] = 0.287
    data.time[6] = 0.347
    data.time[7] = 0.409
    data.time[8] = 0.473
    data.time[9] = 0.537
    data.time[10] = 0.604
    data.time[11] = 0.672
    data.time[12] = 0.745
    data.time[13] = 0.821
    data.time[14] = 0.904
    return data
end

function jubenTracePoints.elapse_10202_10203()
    local data = {}
    data.count = 13
    data.time = {}
    data.time[1] = 0.107
    data.time[2] = 0.196
    data.time[3] = 0.275
    data.time[4] = 0.349
    data.time[5] = 0.419
    data.time[6] = 0.486
    data.time[7] = 0.552
    data.time[8] = 0.616
    data.time[9] = 0.68
    data.time[10] = 0.744
    data.time[11] = 0.808
    data.time[12] = 0.872
    data.time[13] = 0.935
    return data
end

function jubenTracePoints.elapse_10203_10204()
    local data = {}
    data.count = 14
    data.time = {}
    data.time[1] = 0.043
    data.time[2] = 0.089
    data.time[3] = 0.137
    data.time[4] = 0.187
    data.time[5] = 0.24
    data.time[6] = 0.296
    data.time[7] = 0.356
    data.time[8] = 0.419
    data.time[9] = 0.486
    data.time[10] = 0.558
    data.time[11] = 0.636
    data.time[12] = 0.718
    data.time[13] = 0.807
    data.time[14] = 0.901
    return data
end

function jubenTracePoints.elapse_10204_10207()
    local data = {}
    data.count = 13
    data.time = {}
    data.time[1] = 0.084
    data.time[2] = 0.169
    data.time[3] = 0.253
    data.time[4] = 0.336
    data.time[5] = 0.417
    data.time[6] = 0.495
    data.time[7] = 0.57
    data.time[8] = 0.642
    data.time[9] = 0.711
    data.time[10] = 0.775
    data.time[11] = 0.836
    data.time[12] = 0.893
    data.time[13] = 0.947
    return data
end

function jubenTracePoints.elapse_10205_10206()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.041
    data.time[2] = 0.088
    data.time[3] = 0.142
    data.time[4] = 0.206
    data.time[5] = 0.284
    data.time[6] = 0.384
    data.time[7] = 0.515
    data.time[8] = 0.659
    data.time[9] = 0.778
    data.time[10] = 0.868
    data.time[11] = 0.939
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