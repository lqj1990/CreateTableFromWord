-- Create table
create table TB_YXJC_SHIPDYNAD
(
SHIP_NAME VARCHAR2(20) ,
POSTIME DATE not null,
LON NUMBER(12,7) ,
LAT NUMBER(12,7) ,
SPEED NUMBER(12,6) ,
COURSE NUMBER(12,6) ,
HEADING NUMBER(12,6) ,
POSSTATE VARCHAR2(1) ,
TYPE VARCHAR2(1) ,
PERIOD NUMBER(12,6) ,
SHIP_ID VARCHAR2(13) not null,
TURNRATE NUMBER(10,2) ,
SHIPSTATUS VARCHAR2(3) ,
UTC DATE ,
SRC_DATA VARCHAR2(20) ,
LON_INIT NUMBER(12,7) ,
LAT_INIT NUMBER(12,7) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_SHIPDYNAD
  is '船舶动态数据表';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.SHIP_NAME 
  is '船名';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.POSTIME 
  is '定位时间';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.LON 
  is '经度';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.LAT 
  is '纬度';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.SPEED 
  is '速度';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.COURSE 
  is '航向';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.HEADING 
  is '艏向';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.POSSTATE 
  is '发送状态';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.TYPE 
  is '类型';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.PERIOD 
  is '周期';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.SHIP_ID 
  is '船舶ID';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.TURNRATE 
  is '转向速率';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.SHIPSTATUS 
  is '船舶状态';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.UTC 
  is 'UTC时间';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.SRC_DATA 
  is '数据来源';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.LON_INIT 
  is '初始经度';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.LAT_INIT 
  is '初始纬度';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.STATUS 
  is '记录状态';
alter table TB_YXJC_SHIPDYNAD
  add constraint PK_SHIPDYNAD primary key (SHIP_ID,POSTIME);

-- Create table
create table TB_YXJC_ENDPOINTFORMULAD
(
NAVINO VARCHAR2(20) ,
EPSIMNO VARCHAR2(15) ,
CHARGEVOLTAGEF VARCHAR2(40) ,
CHARGECURRENTF VARCHAR2(40) ,
STATICVOLTAGEF VARCHAR2(40) ,
STATICCURRENTF VARCHAR2(40) ,
WORKVOLTAGEF VARCHAR2(40) ,
WORDCURRENTF VARCHAR2(40) ,
SUNSHINEF VARCHAR2(40) ,
TIMEZONEADJUSTF VARCHAR2(40) ,
THRESHOLDF VARCHAR2(40) ,
DCHARGECURRENTF VARCHAR2(40) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_ENDPOINTFORMULAD
  is '终端公式信息表动态数据表';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.NAVINO 
  is '航标编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.EPSIMNO 
  is '终端SIM卡号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.CHARGEVOLTAGEF 
  is '充电电压计算公式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.CHARGECURRENTF 
  is '充电电流计算公式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.STATICVOLTAGEF 
  is '静态电压计算公式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.STATICCURRENTF 
  is '静态电流计算公式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.WORKVOLTAGEF 
  is '工作电压计算公式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.WORDCURRENTF 
  is '工作电流计算公式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.SUNSHINEF 
  is '日光值计算公式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.TIMEZONEADJUSTF 
  is '时区调整公式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.THRESHOLDF 
  is '阈值计算公式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.DCHARGECURRENTF 
  is '放电电流计算公式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.STATUS 
  is '记录状态';

-- Create table
create table TB_YXJC_ENDPOINTCONFIGI
(
NAVINO VARCHAR2(20) ,
EPSIMNO VARCHAR2(15) ,
BASEPOINTCOORDINATE VARCHAR2(30) ,
HIGHVOLTAGETHRESHOLD VARCHAR2(4) ,
LOWVOLTAGETHRESHOLD VARCHAR2(10) ,
SUNSHINETHRESHOLD VARCHAR2(5) ,
IMPACKTHRESHOLD VARCHAR2(5) ,
FITLIGHTQUALITY VARCHAR2(5) ,
LOCALADDRESS VARCHAR2(5) ,
SPORTLIGHTQUALITY VARCHAR2(5) ,
SHIFTALARMRANGE VARCHAR2(10) ,
DRIFTALARMRANGE VARCHAR2(10) ,
LIGHTNUM VARCHAR2(5) ,
ALARMLEVEL VARCHAR2(5) ,
LEASTLIGHTNUM VARCHAR2(5) ,
REGISTER VARCHAR2(5) ,
CONFIGURESTATUS VARCHAR2(5) ,
LOWBATTERY VARCHAR2(5) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_ENDPOINTCONFIGI
  is '终端配置信息表';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.NAVINO 
  is '航标编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.EPSIMNO 
  is '终端SIM卡号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.BASEPOINTCOORDINATE 
  is '基点坐标';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.HIGHVOLTAGETHRESHOLD 
  is '高压门限';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.LOWVOLTAGETHRESHOLD 
  is '低压门限';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.SUNSHINETHRESHOLD 
  is '日光阈值';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.IMPACKTHRESHOLD 
  is '撞击门限';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.FITLIGHTQUALITY 
  is '设置灯质';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.LOCALADDRESS 
  is '本机地址';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.SPORTLIGHTQUALITY 
  is '串口灯质';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.SHIFTALARMRANGE 
  is '位移报警距离';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.DRIFTALARMRANGE 
  is '漂移报警距离';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.LIGHTNUM 
  is '灯数总计';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.ALARMLEVEL 
  is '报警等级';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.LEASTLIGHTNUM 
  is '最少灯数';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.REGISTER 
  is '登记';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.CONFIGURESTATUS 
  is '配置状态';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.LOWBATTERY 
  is '低电量';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.STATUS 
  is '记录状态';

-- Create table
create table TB_YXJC_ENDPOINTI
(
NAVINAME VARCHAR2(80) ,
NAVINO VARCHAR2(20) not null,
EPNO VARCHAR2(15) ,
EPSIMNO VARCHAR2(15) ,
ALARMPHONENUM VARCHAR2(15) ,
NAVISETDATE VARCHAR2(30) ,
NAVEPICLOCATION VARCHAR2(100) ,
COMMUNICATIONMODE VARCHAR2(20) ,
POLLTIMEINDEX VARCHAR2(60) ,
CALLTIMEINDEX VARCHAR2(5) ,
ALARMTIMEINDEX VARCHAR2(5) ,
POLLPHONENOINDEX VARCHAR2(5) ,
CALLPHONENOINDEX VARCHAR2(5) ,
ALARMPHONENOINDEX VARCHAR2(5) ,
MARKTYPECODE VARCHAR2(5) ,
UNITNO VARCHAR2(5) ,
ALARMINFO VARCHAR2(10) ,
SATELLITENUM VARCHAR2(2) ,
PROCTOLNO VARCHAR2(12) ,
EQUIPTYPENO VARCHAR2(5)  default 9 ,
ISSUPPORTDIFFER VARCHAR2(2) ,
NAVIMANAGEPART VARCHAR2(150) ,
NAVIRECORD VARCHAR2(500) ,
NAVIOPERATETIME VARCHAR2(5) ,
VALIDATETIME VARCHAR2(5) ,
NAVICODE VARCHAR2(10) ,
ALARMCODE VARCHAR2(20) ,
GPSCODE VARCHAR2(1) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_ENDPOINTI
  is '终端信息表';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVINAME 
  is '航标名称';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVINO 
  is '航标编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.EPNO 
  is '终端编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.EPSIMNO 
  is '终端SIM卡号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ALARMPHONENUM 
  is '报警手机号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVISETDATE 
  is '航标安装日期';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVEPICLOCATION 
  is '航标图片位置';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.COMMUNICATIONMODE 
  is '通讯模式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.POLLTIMEINDEX 
  is '轮询时间索引编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.CALLTIMEINDEX 
  is '点名时间索引编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ALARMTIMEINDEX 
  is '报警时间索引编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.POLLPHONENOINDEX 
  is '轮询手机号索引编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.CALLPHONENOINDEX 
  is '点名手机号索引编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ALARMPHONENOINDEX 
  is '报警手机号索引编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.MARKTYPECODE 
  is '航标类型编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.UNITNO 
  is '单位编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ALARMINFO 
  is '报警信息';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.SATELLITENUM 
  is '可视卫星数';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.PROCTOLNO 
  is '协议编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.EQUIPTYPENO 
  is '设备类型编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ISSUPPORTDIFFER 
  is '是否支持差分';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVIMANAGEPART 
  is '航标管理部门';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVIRECORD 
  is '航标记录';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVIOPERATETIME 
  is '航标操作时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.VALIDATETIME 
  is '有效期至';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVICODE 
  is '航标码';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ALARMCODE 
  is '报警码';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.GPSCODE 
  is 'GPS编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.STATUS 
  is '记录状态';
alter table TB_YXJC_ENDPOINTI
  add constraint PK_ENDPOINTI primary key (NAVINO);

-- Create table
create table TB_YXJC_ENDPOINTOUTTIMED
(
EPSIMNO VARCHAR2(15) not null,
EPNO VARCHAR2(15) ,
EPCONTROLWORD VARCHAR2(5) ,
EPSTATUS VARCHAR2(10) ,
EPCOORDINATOR VARCHAR2(40) ,
EPALTITUDE VARCHAR2(10) ,
EPVELOCITY VARCHAR2(100) ,
EPREMARK1 VARCHAR2(5) ,
SUNSHINEVALUE VARCHAR2(5) ,
STATICVOLTAGE VARCHAR2(20) ,
WORKVOLTAGE VARCHAR2(20) ,
WORKCURRENT VARCHAR2(20) ,
CHARGEVOLTAGE VARCHAR2(20) ,
CHARGECURRENT VARCHAR2(20) ,
MARKTYPENO VARCHAR2(10) ,
EPLIGHT VARCHAR2(5) ,
EPREMARK2 VARCHAR2(5) ,
TEMPERATURE VARCHAR2(10) ,
CRUISETYPENO VARCHAR2(15) ,
WATERMAPTIME VARCHAR2(10) ,
NAVIGATETYPE VARCHAR2(5) ,
NAVIGATELEVEL VARCHAR2(10) ,
DATACRITERION VARCHAR2(20) ,
RESERVEEP1 VARCHAR2(40) ,
RESERVEEP2 VARCHAR2(20) ,
DATATRANSWAY VARCHAR2(10) ,
GPSDISTANCETOBP VARCHAR2(10) ,
ALARMCODE VARCHAR2(30) ,
SATELLITECHANNELNUM VARCHAR2(10) ,
DATATIME DATE ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_ENDPOINTOUTTIMED
  is '航标终端超时信息表';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPSIMNO 
  is '终端SIM卡号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPNO 
  is '终端编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPCONTROLWORD 
  is '终端控制字';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPSTATUS 
  is '终端状态';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPCOORDINATOR 
  is '终端当前经纬度';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPALTITUDE 
  is '终端当前高程';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPVELOCITY 
  is '终端速度';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPREMARK1 
  is '终端标识1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.SUNSHINEVALUE 
  is '日光值';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.STATICVOLTAGE 
  is '静态电压';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.WORKVOLTAGE 
  is '工作电压';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.WORKCURRENT 
  is '工作电流';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.CHARGEVOLTAGE 
  is '充电电压';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.CHARGECURRENT 
  is '充电电流';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.MARKTYPENO 
  is '运行灯质';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPLIGHT 
  is '终端灯';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPREMARK2 
  is '终端标识2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.TEMPERATURE 
  is '温度';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.CRUISETYPENO 
  is '巡航类别编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.WATERMAPTIME 
  is '水域测绘时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.NAVIGATETYPE 
  is '导航类型';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.NAVIGATELEVEL 
  is '导航级别';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.DATACRITERION 
  is '数据标准';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.RESERVEEP1 
  is '终端预留1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.RESERVEEP2 
  is '终端预留2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.DATATRANSWAY 
  is '数据传输方式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.GPSDISTANCETOBP 
  is 'GPS当前点和基点之间的距离';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.ALARMCODE 
  is '报警码';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.SATELLITECHANNELNUM 
  is '可视卫星通道数';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.DATATIME 
  is '数据时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.STATUS 
  is '记录状态';
alter table TB_YXJC_ENDPOINTOUTTIMED
  add constraint PK_ENDPOINTOUTTIMED primary key (EPSIMNO);

-- Create table
create table TB_YXJC_ENDPOINTHISTORYD
(
EPSIMNO VARCHAR2(15) not null,
EPNO VARCHAR2(15) ,
EPCONTROLWORD VARCHAR2(5) ,
EPSTATUS VARCHAR2(10) ,
EPCOORDINATOR VARCHAR2(40) ,
EPALTITUDE VARCHAR2(10) ,
EPVELOCITY VARCHAR2(100) ,
EPREMARK1 VARCHAR2(5) ,
SUNSHINEVALUE VARCHAR2(5) ,
STATICVOLTAGE VARCHAR2(20) ,
WORKVOLTAGE VARCHAR2(20) ,
WORKCURRENT VARCHAR2(20) ,
CHARGEVOLTAGE VARCHAR2(20) ,
CHARGECURRENT VARCHAR2(20) ,
MARKTYPENO VARCHAR2(10) ,
EPLIGHT VARCHAR2(5) ,
EPREMARK2 VARCHAR2(5) ,
TEMPERATURE VARCHAR2(10) ,
CRUISETYPENO VARCHAR2(15) ,
WATERMAPTIME VARCHAR2(10) ,
NAVIGATETYPE VARCHAR2(5) ,
NAVIGATELEVEL VARCHAR2(10) ,
DATACRITERION VARCHAR2(20) ,
RESERVEEP1 VARCHAR2(40) ,
RESERVEEP2 VARCHAR2(20) ,
DATATRANSWAY VARCHAR2(10) ,
GPSDISTANCETOBP VARCHAR2(10) ,
SATELLITECHANNELNUM VARCHAR2(30) ,
DATATIME VARCHAR2(10) ,
ALARMCODE VARCHAR2(30) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_ENDPOINTHISTORYD
  is '航标终端历史数据信息表';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPSIMNO 
  is '终端SIM卡号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPNO 
  is '终端编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPCONTROLWORD 
  is '终端控制字';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPSTATUS 
  is '终端状态';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPCOORDINATOR 
  is '终端当前经纬度';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPALTITUDE 
  is '终端当前高程';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPVELOCITY 
  is '终端速度';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPREMARK1 
  is '终端标识1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.SUNSHINEVALUE 
  is '日光值';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.STATICVOLTAGE 
  is '静态电压';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.WORKVOLTAGE 
  is '工作电压';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.WORKCURRENT 
  is '工作电流';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.CHARGEVOLTAGE 
  is '充电电压';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.CHARGECURRENT 
  is '充电电流';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.MARKTYPENO 
  is '运行灯质';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPLIGHT 
  is '终端灯';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPREMARK2 
  is '终端标识2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.TEMPERATURE 
  is '温度';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.CRUISETYPENO 
  is '巡航类别编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.WATERMAPTIME 
  is '水域测绘时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.NAVIGATETYPE 
  is '导航类型';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.NAVIGATELEVEL 
  is '导航类别';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.DATACRITERION 
  is '数据标准';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.RESERVEEP1 
  is '终端预留1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.RESERVEEP2 
  is '终端预留2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.DATATRANSWAY 
  is '数据传输方式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.GPSDISTANCETOBP 
  is 'GPS当前点和基点之间的距离';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.SATELLITECHANNELNUM 
  is '可视卫星通道数';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.DATATIME 
  is '数据时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.ALARMCODE 
  is '报警码';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.STATUS 
  is '记录状态';
alter table TB_YXJC_ENDPOINTHISTORYD
  add constraint PK_ENDPOINTHISTORYD primary key (EPSIMNO);

-- Create table
create table TB_YXJC_ENDPOINTNOWD
(
EPSIMNO VARCHAR2(15) not null,
EPNO VARCHAR2(5) ,
EPCONTROLWORD VARCHAR2(5) ,
EPSTATUS VARCHAR2(10) ,
EPCOORDINATOR VARCHAR2(40) ,
EPALTITUDE VARCHAR2(10) ,
EPVELOCITY VARCHAR2(10) ,
EPREMARK1 VARCHAR2(5) ,
SUNSHINEVALUE VARCHAR2(5) ,
STATICVOLTAGE VARCHAR2(20) ,
WORKVOLTAGE VARCHAR2(20) ,
WORKCURRENT VARCHAR2(20) ,
CHARGEVOLTAGE VARCHAR2(20) ,
CHARGECURRENT VARCHAR2(20) ,
MARKTYPENO VARCHAR2(5) ,
EPLIGHT VARCHAR2(5) ,
EPREMARK2 VARCHAR2(5) ,
TEMPERATURE VARCHAR2(10) ,
CRUISETYPENO VARCHAR2(15) ,
WATERMAPTIME VARCHAR2(10) ,
NAVIGATETYPE VARCHAR2(5) ,
NAVIGATELEVEL VARCHAR2(10) ,
DATACRITERION VARCHAR2(20) ,
RESERVEEP1 VARCHAR2(20) ,
RESERVEEP2 VARCHAR2(20) ,
DATATRANSWAY VARCHAR2(1) ,
GPSDISTANCETOBP VARCHAR2(10) ,
SATELLITECHANNELNUM VARCHAR2(2) ,
DATECOLLECTTIME DATE ,
VALIDITYTIME DATE ,
ALARMCODE VARCHAR2(20) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_ENDPOINTNOWD
  is '航标终端最新数据信息表';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPSIMNO 
  is '终端SIM卡号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPNO 
  is '终端编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPCONTROLWORD 
  is '终端控制字';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPSTATUS 
  is '终端状态';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPCOORDINATOR 
  is '终端当前经纬度';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPALTITUDE 
  is '终端当前高程';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPVELOCITY 
  is '终端移动速度';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPREMARK1 
  is '终端标识1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.SUNSHINEVALUE 
  is '日光值';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.STATICVOLTAGE 
  is '静态电压';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.WORKVOLTAGE 
  is '工作电压';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.WORKCURRENT 
  is '工作电流';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.CHARGEVOLTAGE 
  is '充电电压';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.CHARGECURRENT 
  is '充电电流';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.MARKTYPENO 
  is '运行灯质';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPLIGHT 
  is '终端灯';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPREMARK2 
  is '终端标识2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.TEMPERATURE 
  is '温度';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.CRUISETYPENO 
  is '巡航类别编号';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.WATERMAPTIME 
  is '水域测绘时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.NAVIGATETYPE 
  is '导航类型';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.NAVIGATELEVEL 
  is '导航级别';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.DATACRITERION 
  is '数据标准';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.RESERVEEP1 
  is '终端预留1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.RESERVEEP2 
  is '终端预留2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.DATATRANSWAY 
  is '数据传输方式';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.GPSDISTANCETOBP 
  is 'GPS当前点和基点之间的距离';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.SATELLITECHANNELNUM 
  is '可视卫星通道数';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.DATECOLLECTTIME 
  is '数据采集时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.VALIDITYTIME 
  is '有效期';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.ALARMCODE 
  is '报警码';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.STATUS 
  is '记录状态';
alter table TB_YXJC_ENDPOINTNOWD
  add constraint PK_ENDPOINTNOWD primary key (EPSIMNO);

-- Create table
create table TB_YXJC_NAVIUNITM
(
UNITNO VARCHAR2(5) not null,
UNITNAME VARCHAR2(100) ,
UNITLEVEL VARCHAR2(2) ,
BELONGUNIT VARCHAR2(5) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_NAVIUNITM
  is '航标单位代码表';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.UNITNO 
  is '单位编号';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.UNITNAME 
  is '单位名称';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.UNITLEVEL 
  is '单位级别';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.BELONGUNIT 
  is '所属单位';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.STATUS 
  is '记录状态';
alter table TB_YXJC_NAVIUNITM
  add constraint PK_NAVIUNITM primary key (UNITNO);

-- Create table
create table TB_YXJC_NAVICHARACTERM
(
MARKTYPENO VARCHAR2(10) not null,
MARKTYPECODE VARCHAR2(20) ,
CHARACTERDETAIL VARCHAR2(10) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_NAVICHARACTERM
  is '航标灯质类型代码表';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.MARKTYPENO 
  is '航标类型编号';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.MARKTYPECODE 
  is '航标类型代码';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.CHARACTERDETAIL 
  is '灯质类型说明';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.STATUS 
  is '记录状态';
alter table TB_YXJC_NAVICHARACTERM
  add constraint PK_NAVICHARACTERM primary key (MARKTYPENO);

-- Create table
create table TB_YXJC_NAVIMONITORTYPEM
(
MARKTYPECODE VARCHAR2(10) not null,
MARKTYPENAME VARCHAR2(20) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_NAVIMONITORTYPEM
  is '航标监测航标类型代码表';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.MARKTYPECODE 
  is '航标类型代码';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.MARKTYPENAME 
  is '航标类型名称';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.STATUS 
  is '记录状态';
alter table TB_YXJC_NAVIMONITORTYPEM
  add constraint PK_NAVIMONITORTYPEM primary key (MARKTYPECODE);

-- Create table
create table TB_YXJC_NAVITYPEM
(
NAVIMARKCODE VARCHAR2(10) not null,
NAVIMARKNAME VARCHAR2(20) ,
NAVIMARKCATEGORY VARCHAR2(10) ,
SERIALNO NUMBER(22) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_NAVITYPEM
  is '航标类型代码表';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.NAVIMARKCODE 
  is '标志代码';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.NAVIMARKNAME 
  is '标志名称';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.NAVIMARKCATEGORY 
  is '标志所属类别';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.SERIALNO 
  is '序号';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.STATUS 
  is '记录状态';
alter table TB_YXJC_NAVITYPEM
  add constraint PK_NAVITYPEM primary key (NAVIMARKCODE);

-- Create table
create table TB_YXJC_NAVIARRANGEM
(
ARRANGECODE VARCHAR2(1) not null,
ARRANGENAME VARCHAR2(20) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_NAVIARRANGEM
  is '航标配布类别代码表';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.ARRANGECODE 
  is '航标配布类别代码';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.ARRANGENAME 
  is '航标配布类别名称';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.STATUS 
  is '记录状态';
alter table TB_YXJC_NAVIARRANGEM
  add constraint PK_NAVIARRANGEM primary key (ARRANGECODE);

-- Create table
create table TB_YXJC_NAVISTATUSM
(
NAVISTATUSCODE VARCHAR2(1) not null,
NAVISTATUSCATEGORY VARCHAR2(10) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_NAVISTATUSM
  is '航标启用状态代码表';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.NAVISTATUSCODE 
  is '航标启用状态代码';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.NAVISTATUSCATEGORY 
  is '航标启用状态类别';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.STATUS 
  is '记录状态';
alter table TB_YXJC_NAVISTATUSM
  add constraint PK_NAVISTATUSM primary key (NAVISTATUSCODE);

-- Create table
create table TB_YXJC_NAVIEUQIPTYPEM
(
EQUIPTYPENO VARCHAR2(1) not null,
EQUIPTYPENAME VARCHAR2(20) ,
EQUIPTYPEDETAIL VARCHAR2(200) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_NAVIEUQIPTYPEM
  is '航标设备类型代码表';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.EQUIPTYPENO 
  is '航标设备类型代码';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.EQUIPTYPENAME 
  is '航标设备类型名称';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.EQUIPTYPEDETAIL 
  is '航标蛇类类型详细';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.STATUS 
  is '记录状态';
alter table TB_YXJC_NAVIEUQIPTYPEM
  add constraint PK_NAVIEUQIPTYPEM primary key (EQUIPTYPENO);

-- Create table
create table TB_YXJC_NAVICOMMUNICATIONMODEM
(
COMMUCODE VARCHAR2(2) not null,
COMMUNAME VARCHAR2(10) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_NAVICOMMUNICATIONMODEM
  is '航标通讯模式代码表';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.COMMUCODE 
  is '航标通讯模式代码';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.COMMUNAME 
  is '航标通讯模式名称';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.STATUS 
  is '记录状态';
alter table TB_YXJC_NAVICOMMUNICATIONMODEM
  add constraint PK_NAVICOMMUNICATIONMODEM primary key (COMMUCODE);

-- Create table
create table TB_YXJC_CRUISETYPEM
(
CRUISETYPENO VARCHAR2(1) not null,
CRUISETYPENAME VARCHAR2(20) 
);
-- Add comments to the table
 comment on table TB_YXJC_CRUISETYPEM
  is '巡航类别代码表';
-- Add comments to the columns 
comment on column TB_YXJC_CRUISETYPEM.CRUISETYPENO 
  is '巡航类别代码';
-- Add comments to the columns 
comment on column TB_YXJC_CRUISETYPEM.CRUISETYPENAME 
  is '巡航类别名称';
alter table TB_YXJC_CRUISETYPEM
  add constraint PK_CRUISETYPEM primary key (CRUISETYPENO);

-- Create table
create table TB_FDGG_LOCKAGESHIPSTATISTICSD
(
LSSTATISTICSID NUMBER(30,0) not null,
LSSTATISTICSDATE DATE ,
ULNUM VARCHAR2(100) ,
ULNUM1 NUMBER(22) ,
USNUM1 NUMBER(22) ,
USDAYNUM1 NUMBER(22) ,
ULREALTON1 NUMBER(22) ,
ULCHECKTON1 NUMBER(22) ,
ULNUM1_2 NUMBER(22) ,
DSNUM1 NUMBER(22) ,
DSDAYNUM1 NUMBER(22) ,
DLREALTON1 NUMBER(22) ,
DLCHECKTON1 NUMBER(22) ,
ULNUM2 NUMBER(22) ,
USNUM2 NUMBER(22) ,
USDAYNUM2 NUMBER(22) ,
ULREALTON2 NUMBER(22) ,
ULCHECKTON2 NUMBER(22) ,
ULNUM2_2 NUMBER(22) ,
DSNUM2 NUMBER(22) ,
DSDAYNUM2 NUMBER(22) ,
DLREALTON2 NUMBER(22) ,
DLCHECKTON2 NUMBER(22) ,
STARTTIME DATE ,
ENDTIME DATE ,
TEAM CHAR(10) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_FDGG_LOCKAGESHIPSTATISTICSD
  is '过闸船舶统计信息表';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.LSSTATISTICSID 
  is '信息编号';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.LSSTATISTICSDATE 
  is '日期';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULNUM 
  is '上行闸数';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULNUM1 
  is '1#船闸上行闸数';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.USNUM1 
  is '1#船闸上行过船舶数';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.USDAYNUM1 
  is '1#船闸上行过船舶数日累计合计';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULREALTON1 
  is '1#船闸上行实载吨位';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULCHECKTON1 
  is '1#船闸上行核载吨位';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULNUM1_2 
  is '1#船闸上行闸数2';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DSNUM1 
  is '1#船闸下行过船舶数';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DSDAYNUM1 
  is '1#船闸下行过船舶数日累计合计';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DLREALTON1 
  is '1#船闸下行实载吨位';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DLCHECKTON1 
  is '1#船闸下行核载吨位';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULNUM2 
  is '2#船闸上行闸数';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.USNUM2 
  is '2#船闸上行过船舶数';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.USDAYNUM2 
  is '2#船闸上行过船舶数日累计合计';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULREALTON2 
  is '2#船闸上行实载吨位';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULCHECKTON2 
  is '2#船闸上行核载吨位';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULNUM2_2 
  is '2#船闸上行闸数2';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DSNUM2 
  is '2#船闸下行过船舶数';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DSDAYNUM2 
  is '2#船闸下行过船舶数日累计合计';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DLREALTON2 
  is '2#船闸下行实载吨位';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DLCHECKTON2 
  is '2#船闸下行核载吨位';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.STARTTIME 
  is '统计起始时间';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ENDTIME 
  is '统计结尾时间';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.TEAM 
  is '班组';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.STATUS 
  is '记录状态';
alter table TB_FDGG_LOCKAGESHIPSTATISTICSD
  add constraint PK_LOCKAGESHIPSTATISTICSD primary key (LSSTATISTICSID);

-- Create table
create table TB_YXJC_LOCKSHIPCOMPREHENSED
(
LSCOMPREHENSEID NUMBER(30,0) not null,
LSCONPREHENSEDATE DATE ,
ULNUM NUMBER(22) ,
USDAYNUM NUMBER(22) ,
USMONTHNUM NUMBER(22) ,
USNUM NUMBER(22) ,
USNEWNUM NUMBER(22) ,
UANCHORNUM NUMBER(22) ,
USWAITNUM NUMBER(22) ,
DLNUM NUMBER(22) ,
DSDAYNUM NUMBER(22) ,
DSMONTHNUM NUMBER(22) ,
DSNUM NUMBER(22) ,
DSNEWNUM NUMBER(22) ,
DANCHORNUM NUMBER(22) ,
DSWAITNUM NUMBER(22) ,
DLNUM2 NUMBER(22) ,
EMPTYL1# NUMBER(22) ,
EMPTYL2# NUMBER(22) ,
STARTTIME DATE ,
ENDTIME DATE ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_YXJC_LOCKSHIPCOMPREHENSED
  is '过闸船舶综合统计信息表';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.LSCOMPREHENSEID 
  is '信息编号';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.LSCONPREHENSEDATE 
  is '日期';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.ULNUM 
  is '上行闸数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.USDAYNUM 
  is '1#2#上行当天总合计';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.USMONTHNUM 
  is '上行月累计过闸数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.USNUM 
  is '上行累计过闸船舶数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.USNEWNUM 
  is '上行新增报到船舶数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.UANCHORNUM 
  is '下锚地累计报到数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.USWAITNUM 
  is '上行待闸船舶数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DLNUM 
  is '下行闸数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DSDAYNUM 
  is '1#2#下行当天总合计';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DSMONTHNUM 
  is '下行月累计过闸数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DSNUM 
  is '下行累计过闸船舶数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DSNEWNUM 
  is '下行新增报到船舶数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DANCHORNUM 
  is '上锚地累计报到数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DSWAITNUM 
  is '下行待闸船舶数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DLNUM2 
  is '下行闸数';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.EMPTYL1# 
  is '#1空闸';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.EMPTYL2# 
  is '#2空闸';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.STARTTIME 
  is '统计起始时间';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.ENDTIME 
  is '统计结尾时间';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.STATUS 
  is '记录状态';
alter table TB_YXJC_LOCKSHIPCOMPREHENSED
  add constraint PK_LOCKSHIPCOMPREHENSED primary key (LSCOMPREHENSEID);

-- Create table
create table TB_FDGG_LOCKCHAMBERMANAGEI
(
CHAMBERID NUMBER(20,0) not null,
CHAMBERNAME VARCHAR2(50) ,
LNO NUMBER(30,0) ,
CHAMBERWIDTH NUMBER(22) ,
CHAMBERLENGTH NUMBER(22) ,
CHAMBERSTATUS CHAR(10) ,
ULTIME NUMBER(22) ,
DLTIME NUMBER(22) ,
UDSTATUS NUMBER(2,0) ,
LTIMES NUMBER(20,0) ,
CHAMBERREMARK VARCHAR2(1000) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_FDGG_LOCKCHAMBERMANAGEI
  is '闸室管理信息表';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERID 
  is '闸室编号';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERNAME 
  is '闸室名称';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.LNO 
  is '船闸编号';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERWIDTH 
  is '宽';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERLENGTH 
  is '长';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERSTATUS 
  is '状态';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.ULTIME 
  is '上行过闸时间';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.DLTIME 
  is '下行过闸时间';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.UDSTATUS 
  is '上下行状态';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.LTIMES 
  is '过闸次数';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERREMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.STATUS 
  is '记录状态';
alter table TB_FDGG_LOCKCHAMBERMANAGEI
  add constraint PK_LOCKCHAMBERMANAGEI primary key (CHAMBERID);

-- Create table
create table TB_FDGG_LOCKLEVELM
(
LOCKLEVELID VARCHAR2(2) not null,
LOCKLEVELNAME VARCHAR2(50) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_FDGG_LOCKLEVELM
  is '船闸级别代码表';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.LOCKLEVELID 
  is '船闸级别代码';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.LOCKLEVELNAME 
  is '船闸级别代码名称';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.STATUS 
  is '记录状态';
alter table TB_FDGG_LOCKLEVELM
  add constraint PK_LOCKLEVELM primary key (LOCKLEVELID);

-- Create table
create table TB_FDGG_LOCKPROPERTYM
(
LOCKPROPERTYID VARCHAR2(1) not null,
LOCKPROPERTYNAME VARCHAR2(20) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_FDGG_LOCKPROPERTYM
  is '船闸属性代码表';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.LOCKPROPERTYID 
  is '船闸属性代码';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.LOCKPROPERTYNAME 
  is '船闸属性名称';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.STATUS 
  is '记录状态';
alter table TB_FDGG_LOCKPROPERTYM
  add constraint PK_LOCKPROPERTYM primary key (LOCKPROPERTYID);

-- Create table
create table TB_FDGG_LOCKSTATUSM
(
LOCKSTATUSID VARCHAR2(2) not null,
LOCKSTATUSNAME VARCHAR2(20) ,
WRITETIME DATE  default sysdate,
RESERVEFLAG NUMBER(1)  default 0,
REMARK VARCHAR2(100) ,
STATUS NUMBER(3)  default 0
);
-- Add comments to the table
 comment on table TB_FDGG_LOCKSTATUSM
  is '船闸状态代码表';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.LOCKSTATUSID 
  is '船闸状态代码';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.LOCKSTATUSNAME 
  is '船闸状态名称';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.WRITETIME 
  is '写入时间';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.RESERVEFLAG 
  is '预留标志';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.REMARK 
  is '备注';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.STATUS 
  is '记录状态';
alter table TB_FDGG_LOCKSTATUSM
  add constraint PK_LOCKSTATUSM primary key (LOCKSTATUSID);

