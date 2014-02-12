local jubenTracePoints = {}
function jubenTracePoints.elapse_6_7()
    local data = {}
    data.count = 19
    data.time = {}
    data.time[1] = 0.029
    data.time[2] = 0.06
    data.time[3] = 0.094
    data.time[4] = 0.131
    data.time[5] = 0.17
    data.time[6] = 0.214
    data.time[7] = 0.261
    data.time[8] = 0.313
    data.time[9] = 0.37
    data.time[10] = 0.431
    data.time[11] = 0.496
    data.time[12] = 0.565
    data.time[13] = 0.635
    data.time[14] = 0.705
    data.time[15] = 0.77
    data.time[16] = 0.828
    data.time[17] = 0.879
    data.time[18] = 0.923
    data.time[19] = 0.963
    return data
end

function jubenTracePoints.elapse_1_2()
    local data = {}
    data.count = 15
    data.time = {}
    data.time[1] = 0.025
    data.time[2] = 0.054
    data.time[3] = 0.085
    data.time[4] = 0.12
    data.time[5] = 0.16
    data.time[6] = 0.207
    data.time[7] = 0.263
    data.time[8] = 0.328
    data.time[9] = 0.402
    data.time[10] = 0.48
    data.time[11] = 0.558
    data.time[12] = 0.638
    data.time[13] = 0.725
    data.time[14] = 0.822
    data.time[15] = 0.922
    return data
end

function jubenTracePoints.elapse_1_5()
    local data = {}
    data.count = 17
    data.time = {}
    data.time[1] = 0.03
    data.time[2] = 0.063
    data.time[3] = 0.099
    data.time[4] = 0.138
    data.time[5] = 0.181
    data.time[6] = 0.227
    data.time[7] = 0.279
    data.time[8] = 0.337
    data.time[9] = 0.399
    data.time[10] = 0.465
    data.time[11] = 0.534
    data.time[12] = 0.604
    data.time[13] = 0.674
    data.time[14] = 0.742
    data.time[15] = 0.809
    data.time[16] = 0.875
    data.time[17] = 0.938
    return data
end

function jubenTracePoints.elapse_2_3()
    local data = {}
    data.count = 10
    data.time = {}
    data.time[1] = 0.105
    data.time[2] = 0.208
    data.time[3] = 0.307
    data.time[4] = 0.403
    data.time[5] = 0.496
    data.time[6] = 0.586
    data.time[7] = 0.673
    data.time[8] = 0.758
    data.time[9] = 0.84
    data.time[10] = 0.921
    return data
end

function jubenTracePoints.elapse_3_4()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.049
    data.time[2] = 0.104
    data.time[3] = 0.164
    data.time[4] = 0.232
    data.time[5] = 0.309
    data.time[6] = 0.396
    data.time[7] = 0.495
    data.time[8] = 0.601
    data.time[9] = 0.709
    data.time[10] = 0.813
    data.time[11] = 0.909
    return data
end

function jubenTracePoints.elapse_4_7()
    local data = {}
    data.count = 21
    data.time = {}
    data.time[1] = 0.032
    data.time[2] = 0.066
    data.time[3] = 0.102
    data.time[4] = 0.14
    data.time[5] = 0.178
    data.time[6] = 0.218
    data.time[7] = 0.258
    data.time[8] = 0.3
    data.time[9] = 0.341
    data.time[10] = 0.384
    data.time[11] = 0.426
    data.time[12] = 0.47
    data.time[13] = 0.514
    data.time[14] = 0.559
    data.time[15] = 0.605
    data.time[16] = 0.652
    data.time[17] = 0.702
    data.time[18] = 0.754
    data.time[19] = 0.809
    data.time[20] = 0.869
    data.time[21] = 0.933
    return data
end

function jubenTracePoints.elapse_5_6()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.083
    data.time[2] = 0.168
    data.time[3] = 0.255
    data.time[4] = 0.341
    data.time[5] = 0.428
    data.time[6] = 0.514
    data.time[7] = 0.6
    data.time[8] = 0.683
    data.time[9] = 0.765
    data.time[10] = 0.845
    data.time[11] = 0.923
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