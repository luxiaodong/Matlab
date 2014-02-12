local jubenTracePoints = {}
function jubenTracePoints.elapse_3_1()
    local data = {}
    data.count = 10
    data.time = {}
    data.time[1] = 0.059
    data.time[2] = 0.13
    data.time[3] = 0.215
    data.time[4] = 0.309
    data.time[5] = 0.405
    data.time[6] = 0.5
    data.time[7] = 0.597
    data.time[8] = 0.702
    data.time[9] = 0.814
    data.time[10] = 0.918
    return data
end

function jubenTracePoints.elapse_6_8()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.106
    data.time[2] = 0.215
    data.time[3] = 0.324
    data.time[4] = 0.434
    data.time[5] = 0.546
    data.time[6] = 0.658
    data.time[7] = 0.771
    data.time[8] = 0.885
    return data
end

function jubenTracePoints.elapse_8_7()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.107
    data.time[2] = 0.214
    data.time[3] = 0.322
    data.time[4] = 0.428
    data.time[5] = 0.531
    data.time[6] = 0.632
    data.time[7] = 0.729
    data.time[8] = 0.822
    data.time[9] = 0.912
    return data
end

function jubenTracePoints.elapse_8_4()
    local data = {}
    data.count = 10
    data.time = {}
    data.time[1] = 0.058
    data.time[2] = 0.129
    data.time[3] = 0.217
    data.time[4] = 0.322
    data.time[5] = 0.439
    data.time[6] = 0.559
    data.time[7] = 0.675
    data.time[8] = 0.779
    data.time[9] = 0.867
    data.time[10] = 0.939
    return data
end

function jubenTracePoints.elapse_7_2()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.068
    data.time[2] = 0.138
    data.time[3] = 0.21
    data.time[4] = 0.284
    data.time[5] = 0.359
    data.time[6] = 0.436
    data.time[7] = 0.515
    data.time[8] = 0.594
    data.time[9] = 0.674
    data.time[10] = 0.755
    data.time[11] = 0.837
    data.time[12] = 0.918
    return data
end

function jubenTracePoints.elapse_4_2()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.141
    data.time[2] = 0.265
    data.time[3] = 0.372
    data.time[4] = 0.467
    data.time[5] = 0.552
    data.time[6] = 0.629
    data.time[7] = 0.701
    data.time[8] = 0.767
    data.time[9] = 0.83
    data.time[10] = 0.889
    data.time[11] = 0.945
    return data
end

function jubenTracePoints.elapse_5_2()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.055
    data.time[2] = 0.132
    data.time[3] = 0.234
    data.time[4] = 0.332
    data.time[5] = 0.418
    data.time[6] = 0.499
    data.time[7] = 0.584
    data.time[8] = 0.679
    data.time[9] = 0.779
    data.time[10] = 0.858
    data.time[11] = 0.916
    data.time[12] = 0.961
    return data
end

function jubenTracePoints.elapse_2_3()
    local data = {}
    data.count = 10
    data.time = {}
    data.time[1] = 0.067
    data.time[2] = 0.137
    data.time[3] = 0.211
    data.time[4] = 0.288
    data.time[5] = 0.37
    data.time[6] = 0.457
    data.time[7] = 0.549
    data.time[8] = 0.649
    data.time[9] = 0.756
    data.time[10] = 0.873
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