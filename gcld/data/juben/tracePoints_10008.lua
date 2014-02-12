local jubenTracePoints = {}
function jubenTracePoints.elapse_7_6()
    local data = {}
    data.count = 15
    data.time = {}
    data.time[1] = 0.051
    data.time[2] = 0.107
    data.time[3] = 0.167
    data.time[4] = 0.234
    data.time[5] = 0.306
    data.time[6] = 0.385
    data.time[7] = 0.466
    data.time[8] = 0.546
    data.time[9] = 0.62
    data.time[10] = 0.689
    data.time[11] = 0.751
    data.time[12] = 0.809
    data.time[13] = 0.861
    data.time[14] = 0.91
    data.time[15] = 0.956
    return data
end

function jubenTracePoints.elapse_6_2()
    local data = {}
    data.count = 10
    data.time = {}
    data.time[1] = 0.061
    data.time[2] = 0.132
    data.time[3] = 0.213
    data.time[4] = 0.307
    data.time[5] = 0.416
    data.time[6] = 0.533
    data.time[7] = 0.645
    data.time[8] = 0.746
    data.time[9] = 0.838
    data.time[10] = 0.921
    return data
end

function jubenTracePoints.elapse_6_1()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.074
    data.time[2] = 0.15
    data.time[3] = 0.225
    data.time[4] = 0.301
    data.time[5] = 0.377
    data.time[6] = 0.454
    data.time[7] = 0.531
    data.time[8] = 0.608
    data.time[9] = 0.685
    data.time[10] = 0.763
    data.time[11] = 0.841
    data.time[12] = 0.92
    return data
end

function jubenTracePoints.elapse_1_4()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.074
    data.time[2] = 0.149
    data.time[3] = 0.226
    data.time[4] = 0.302
    data.time[5] = 0.379
    data.time[6] = 0.457
    data.time[7] = 0.534
    data.time[8] = 0.612
    data.time[9] = 0.69
    data.time[10] = 0.768
    data.time[11] = 0.845
    data.time[12] = 0.922
    return data
end

function jubenTracePoints.elapse_1_3()
    local data = {}
    data.count = 11
    data.time = {}
    data.time[1] = 0.071
    data.time[2] = 0.145
    data.time[3] = 0.22
    data.time[4] = 0.297
    data.time[5] = 0.377
    data.time[6] = 0.458
    data.time[7] = 0.542
    data.time[8] = 0.629
    data.time[9] = 0.717
    data.time[10] = 0.809
    data.time[11] = 0.902
    return data
end

function jubenTracePoints.elapse_4_3()
    local data = {}
    data.count = 9
    data.time = {}
    data.time[1] = 0.09
    data.time[2] = 0.184
    data.time[3] = 0.282
    data.time[4] = 0.382
    data.time[5] = 0.484
    data.time[6] = 0.588
    data.time[7] = 0.692
    data.time[8] = 0.796
    data.time[9] = 0.899
    return data
end

function jubenTracePoints.elapse_4_8()
    local data = {}
    data.count = 10
    data.time = {}
    data.time[1] = 0.09
    data.time[2] = 0.181
    data.time[3] = 0.271
    data.time[4] = 0.362
    data.time[5] = 0.453
    data.time[6] = 0.544
    data.time[7] = 0.635
    data.time[8] = 0.726
    data.time[9] = 0.817
    data.time[10] = 0.908
    return data
end

function jubenTracePoints.elapse_3_8()
    local data = {}
    data.count = 12
    data.time = {}
    data.time[1] = 0.079
    data.time[2] = 0.159
    data.time[3] = 0.237
    data.time[4] = 0.316
    data.time[5] = 0.393
    data.time[6] = 0.471
    data.time[7] = 0.548
    data.time[8] = 0.624
    data.time[9] = 0.7
    data.time[10] = 0.775
    data.time[11] = 0.85
    data.time[12] = 0.924
    return data
end

function jubenTracePoints.elapse_5_7()
    local data = {}
    data.count = 8
    data.time = {}
    data.time[1] = 0.088
    data.time[2] = 0.182
    data.time[3] = 0.283
    data.time[4] = 0.389
    data.time[5] = 0.503
    data.time[6] = 0.622
    data.time[7] = 0.747
    data.time[8] = 0.873
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