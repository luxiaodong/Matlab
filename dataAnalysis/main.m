
%%去掉120级以下, 7天未登录的

function main()
    xls=xlsread('gcmob_2017-07-17.xlsx',1,'A1:AI40222');
    channel = xls(:,1);
    time = datenum('2017:07:01','yyyy:mm:dd') - datenum(datestr(xls(:,2),'dd.mm.20yy'),'dd.mm.yyyy');
    uid = xls(:,3);
    vip = xls(:,5);
    lv = xls(:,6);
    isTuchen = xls(:,7);
    isJuexing = xls(:,[8:12]); %张飞,关羽,周瑜,找云,诸葛亮,夏侯?
    zhenbao = xls(:,[13:22]); %10珍宝
    shenbing = xls(:,[23:29]); %神兵20,50,70,90,120,150,180
    jiaotaozhuang = xls(:,[30,34]); %角套装
    
    maxLevel = 190;
    %draw_lv_time_vip(lv, time, vip);
    %draw_lv(lv, maxLevel);
    %draw_tuchen(lv, maxLevel, isTuchen);
    %draw_juexing(lv, maxLevel, isJuexing);
    draw_zhenbao(lv, maxLevel, zhenbao);
    %draw_shenbing(lv, maxLevel, shenbing);
    
end







