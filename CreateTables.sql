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
  is '������̬���ݱ�';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.SHIP_NAME 
  is '����';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.POSTIME 
  is '��λʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.LON 
  is '����';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.LAT 
  is 'γ��';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.SPEED 
  is '�ٶ�';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.COURSE 
  is '����';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.HEADING 
  is '����';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.POSSTATE 
  is '����״̬';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.TYPE 
  is '����';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.PERIOD 
  is '����';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.SHIP_ID 
  is '����ID';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.TURNRATE 
  is 'ת������';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.SHIPSTATUS 
  is '����״̬';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.UTC 
  is 'UTCʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.SRC_DATA 
  is '������Դ';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.LON_INIT 
  is '��ʼ����';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.LAT_INIT 
  is '��ʼγ��';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_SHIPDYNAD.STATUS 
  is '��¼״̬';
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
  is '�ն˹�ʽ��Ϣ��̬���ݱ�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.NAVINO 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.EPSIMNO 
  is '�ն�SIM����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.CHARGEVOLTAGEF 
  is '����ѹ���㹫ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.CHARGECURRENTF 
  is '���������㹫ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.STATICVOLTAGEF 
  is '��̬��ѹ���㹫ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.STATICCURRENTF 
  is '��̬�������㹫ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.WORKVOLTAGEF 
  is '������ѹ���㹫ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.WORDCURRENTF 
  is '�����������㹫ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.SUNSHINEF 
  is '�չ�ֵ���㹫ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.TIMEZONEADJUSTF 
  is 'ʱ��������ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.THRESHOLDF 
  is '��ֵ���㹫ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.DCHARGECURRENTF 
  is '�ŵ�������㹫ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTFORMULAD.STATUS 
  is '��¼״̬';

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
  is '�ն�������Ϣ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.NAVINO 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.EPSIMNO 
  is '�ն�SIM����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.BASEPOINTCOORDINATE 
  is '��������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.HIGHVOLTAGETHRESHOLD 
  is '��ѹ����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.LOWVOLTAGETHRESHOLD 
  is '��ѹ����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.SUNSHINETHRESHOLD 
  is '�չ���ֵ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.IMPACKTHRESHOLD 
  is 'ײ������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.FITLIGHTQUALITY 
  is '���õ���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.LOCALADDRESS 
  is '������ַ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.SPORTLIGHTQUALITY 
  is '���ڵ���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.SHIFTALARMRANGE 
  is 'λ�Ʊ�������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.DRIFTALARMRANGE 
  is 'Ư�Ʊ�������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.LIGHTNUM 
  is '�����ܼ�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.ALARMLEVEL 
  is '�����ȼ�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.LEASTLIGHTNUM 
  is '���ٵ���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.REGISTER 
  is '�Ǽ�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.CONFIGURESTATUS 
  is '����״̬';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.LOWBATTERY 
  is '�͵���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTCONFIGI.STATUS 
  is '��¼״̬';

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
  is '�ն���Ϣ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVINAME 
  is '��������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVINO 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.EPNO 
  is '�ն˱��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.EPSIMNO 
  is '�ն�SIM����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ALARMPHONENUM 
  is '�����ֻ���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVISETDATE 
  is '���갲װ����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVEPICLOCATION 
  is '����ͼƬλ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.COMMUNICATIONMODE 
  is 'ͨѶģʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.POLLTIMEINDEX 
  is '��ѯʱ���������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.CALLTIMEINDEX 
  is '����ʱ���������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ALARMTIMEINDEX 
  is '����ʱ���������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.POLLPHONENOINDEX 
  is '��ѯ�ֻ����������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.CALLPHONENOINDEX 
  is '�����ֻ����������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ALARMPHONENOINDEX 
  is '�����ֻ����������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.MARKTYPECODE 
  is '�������ͱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.UNITNO 
  is '��λ���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ALARMINFO 
  is '������Ϣ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.SATELLITENUM 
  is '����������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.PROCTOLNO 
  is 'Э����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.EQUIPTYPENO 
  is '�豸���ͱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ISSUPPORTDIFFER 
  is '�Ƿ�֧�ֲ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVIMANAGEPART 
  is '���������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVIRECORD 
  is '�����¼';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVIOPERATETIME 
  is '�������ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.VALIDATETIME 
  is '��Ч����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.NAVICODE 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.ALARMCODE 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.GPSCODE 
  is 'GPS���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTI.STATUS 
  is '��¼״̬';
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
  is '�����ն˳�ʱ��Ϣ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPSIMNO 
  is '�ն�SIM����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPNO 
  is '�ն˱��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPCONTROLWORD 
  is '�ն˿�����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPSTATUS 
  is '�ն�״̬';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPCOORDINATOR 
  is '�ն˵�ǰ��γ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPALTITUDE 
  is '�ն˵�ǰ�߳�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPVELOCITY 
  is '�ն��ٶ�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPREMARK1 
  is '�ն˱�ʶ1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.SUNSHINEVALUE 
  is '�չ�ֵ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.STATICVOLTAGE 
  is '��̬��ѹ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.WORKVOLTAGE 
  is '������ѹ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.WORKCURRENT 
  is '��������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.CHARGEVOLTAGE 
  is '����ѹ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.CHARGECURRENT 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.MARKTYPENO 
  is '���е���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPLIGHT 
  is '�ն˵�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.EPREMARK2 
  is '�ն˱�ʶ2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.TEMPERATURE 
  is '�¶�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.CRUISETYPENO 
  is 'Ѳ�������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.WATERMAPTIME 
  is 'ˮ����ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.NAVIGATETYPE 
  is '��������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.NAVIGATELEVEL 
  is '��������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.DATACRITERION 
  is '���ݱ�׼';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.RESERVEEP1 
  is '�ն�Ԥ��1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.RESERVEEP2 
  is '�ն�Ԥ��2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.DATATRANSWAY 
  is '���ݴ��䷽ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.GPSDISTANCETOBP 
  is 'GPS��ǰ��ͻ���֮��ľ���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.ALARMCODE 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.SATELLITECHANNELNUM 
  is '��������ͨ����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.DATATIME 
  is '����ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTOUTTIMED.STATUS 
  is '��¼״̬';
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
  is '�����ն���ʷ������Ϣ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPSIMNO 
  is '�ն�SIM����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPNO 
  is '�ն˱��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPCONTROLWORD 
  is '�ն˿�����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPSTATUS 
  is '�ն�״̬';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPCOORDINATOR 
  is '�ն˵�ǰ��γ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPALTITUDE 
  is '�ն˵�ǰ�߳�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPVELOCITY 
  is '�ն��ٶ�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPREMARK1 
  is '�ն˱�ʶ1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.SUNSHINEVALUE 
  is '�չ�ֵ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.STATICVOLTAGE 
  is '��̬��ѹ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.WORKVOLTAGE 
  is '������ѹ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.WORKCURRENT 
  is '��������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.CHARGEVOLTAGE 
  is '����ѹ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.CHARGECURRENT 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.MARKTYPENO 
  is '���е���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPLIGHT 
  is '�ն˵�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.EPREMARK2 
  is '�ն˱�ʶ2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.TEMPERATURE 
  is '�¶�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.CRUISETYPENO 
  is 'Ѳ�������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.WATERMAPTIME 
  is 'ˮ����ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.NAVIGATETYPE 
  is '��������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.NAVIGATELEVEL 
  is '�������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.DATACRITERION 
  is '���ݱ�׼';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.RESERVEEP1 
  is '�ն�Ԥ��1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.RESERVEEP2 
  is '�ն�Ԥ��2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.DATATRANSWAY 
  is '���ݴ��䷽ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.GPSDISTANCETOBP 
  is 'GPS��ǰ��ͻ���֮��ľ���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.SATELLITECHANNELNUM 
  is '��������ͨ����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.DATATIME 
  is '����ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.ALARMCODE 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTHISTORYD.STATUS 
  is '��¼״̬';
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
  is '�����ն�����������Ϣ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPSIMNO 
  is '�ն�SIM����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPNO 
  is '�ն˱��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPCONTROLWORD 
  is '�ն˿�����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPSTATUS 
  is '�ն�״̬';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPCOORDINATOR 
  is '�ն˵�ǰ��γ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPALTITUDE 
  is '�ն˵�ǰ�߳�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPVELOCITY 
  is '�ն��ƶ��ٶ�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPREMARK1 
  is '�ն˱�ʶ1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.SUNSHINEVALUE 
  is '�չ�ֵ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.STATICVOLTAGE 
  is '��̬��ѹ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.WORKVOLTAGE 
  is '������ѹ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.WORKCURRENT 
  is '��������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.CHARGEVOLTAGE 
  is '����ѹ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.CHARGECURRENT 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.MARKTYPENO 
  is '���е���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPLIGHT 
  is '�ն˵�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.EPREMARK2 
  is '�ն˱�ʶ2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.TEMPERATURE 
  is '�¶�';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.CRUISETYPENO 
  is 'Ѳ�������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.WATERMAPTIME 
  is 'ˮ����ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.NAVIGATETYPE 
  is '��������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.NAVIGATELEVEL 
  is '��������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.DATACRITERION 
  is '���ݱ�׼';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.RESERVEEP1 
  is '�ն�Ԥ��1';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.RESERVEEP2 
  is '�ն�Ԥ��2';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.DATATRANSWAY 
  is '���ݴ��䷽ʽ';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.GPSDISTANCETOBP 
  is 'GPS��ǰ��ͻ���֮��ľ���';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.SATELLITECHANNELNUM 
  is '��������ͨ����';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.DATECOLLECTTIME 
  is '���ݲɼ�ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.VALIDITYTIME 
  is '��Ч��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.ALARMCODE 
  is '������';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_ENDPOINTNOWD.STATUS 
  is '��¼״̬';
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
  is '���굥λ�����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.UNITNO 
  is '��λ���';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.UNITNAME 
  is '��λ����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.UNITLEVEL 
  is '��λ����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.BELONGUNIT 
  is '������λ';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIUNITM.STATUS 
  is '��¼״̬';
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
  is '����������ʹ����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.MARKTYPENO 
  is '�������ͱ��';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.MARKTYPECODE 
  is '�������ʹ���';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.CHARACTERDETAIL 
  is '��������˵��';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICHARACTERM.STATUS 
  is '��¼״̬';
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
  is '�����⺽�����ʹ����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.MARKTYPECODE 
  is '�������ʹ���';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.MARKTYPENAME 
  is '������������';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIMONITORTYPEM.STATUS 
  is '��¼״̬';
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
  is '�������ʹ����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.NAVIMARKCODE 
  is '��־����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.NAVIMARKNAME 
  is '��־����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.NAVIMARKCATEGORY 
  is '��־�������';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.SERIALNO 
  is '���';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_NAVITYPEM.STATUS 
  is '��¼״̬';
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
  is '�����䲼�������';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.ARRANGECODE 
  is '�����䲼������';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.ARRANGENAME 
  is '�����䲼�������';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIARRANGEM.STATUS 
  is '��¼״̬';
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
  is '��������״̬�����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.NAVISTATUSCODE 
  is '��������״̬����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.NAVISTATUSCATEGORY 
  is '��������״̬���';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_NAVISTATUSM.STATUS 
  is '��¼״̬';
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
  is '�����豸���ʹ����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.EQUIPTYPENO 
  is '�����豸���ʹ���';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.EQUIPTYPENAME 
  is '�����豸��������';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.EQUIPTYPEDETAIL 
  is '��������������ϸ';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_NAVIEUQIPTYPEM.STATUS 
  is '��¼״̬';
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
  is '����ͨѶģʽ�����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.COMMUCODE 
  is '����ͨѶģʽ����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.COMMUNAME 
  is '����ͨѶģʽ����';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_NAVICOMMUNICATIONMODEM.STATUS 
  is '��¼״̬';
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
  is 'Ѳ���������';
-- Add comments to the columns 
comment on column TB_YXJC_CRUISETYPEM.CRUISETYPENO 
  is 'Ѳ��������';
-- Add comments to the columns 
comment on column TB_YXJC_CRUISETYPEM.CRUISETYPENAME 
  is 'Ѳ���������';
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
  is '��բ����ͳ����Ϣ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.LSSTATISTICSID 
  is '��Ϣ���';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.LSSTATISTICSDATE 
  is '����';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULNUM 
  is '����բ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULNUM1 
  is '1#��բ����բ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.USNUM1 
  is '1#��բ���й�������';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.USDAYNUM1 
  is '1#��բ���й����������ۼƺϼ�';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULREALTON1 
  is '1#��բ����ʵ�ض�λ';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULCHECKTON1 
  is '1#��բ���к��ض�λ';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULNUM1_2 
  is '1#��բ����բ��2';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DSNUM1 
  is '1#��բ���й�������';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DSDAYNUM1 
  is '1#��բ���й����������ۼƺϼ�';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DLREALTON1 
  is '1#��բ����ʵ�ض�λ';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DLCHECKTON1 
  is '1#��բ���к��ض�λ';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULNUM2 
  is '2#��բ����բ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.USNUM2 
  is '2#��բ���й�������';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.USDAYNUM2 
  is '2#��բ���й����������ۼƺϼ�';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULREALTON2 
  is '2#��բ����ʵ�ض�λ';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULCHECKTON2 
  is '2#��բ���к��ض�λ';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ULNUM2_2 
  is '2#��բ����բ��2';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DSNUM2 
  is '2#��բ���й�������';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DSDAYNUM2 
  is '2#��բ���й����������ۼƺϼ�';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DLREALTON2 
  is '2#��բ����ʵ�ض�λ';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.DLCHECKTON2 
  is '2#��բ���к��ض�λ';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.STARTTIME 
  is 'ͳ����ʼʱ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.ENDTIME 
  is 'ͳ�ƽ�βʱ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.TEAM 
  is '����';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKAGESHIPSTATISTICSD.STATUS 
  is '��¼״̬';
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
  is '��բ�����ۺ�ͳ����Ϣ��';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.LSCOMPREHENSEID 
  is '��Ϣ���';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.LSCONPREHENSEDATE 
  is '����';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.ULNUM 
  is '����բ��';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.USDAYNUM 
  is '1#2#���е����ܺϼ�';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.USMONTHNUM 
  is '�������ۼƹ�բ��';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.USNUM 
  is '�����ۼƹ�բ������';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.USNEWNUM 
  is '������������������';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.UANCHORNUM 
  is '��ê���ۼƱ�����';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.USWAITNUM 
  is '���д�բ������';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DLNUM 
  is '����բ��';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DSDAYNUM 
  is '1#2#���е����ܺϼ�';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DSMONTHNUM 
  is '�������ۼƹ�բ��';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DSNUM 
  is '�����ۼƹ�բ������';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DSNEWNUM 
  is '������������������';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DANCHORNUM 
  is '��ê���ۼƱ�����';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DSWAITNUM 
  is '���д�բ������';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.DLNUM2 
  is '����բ��';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.EMPTYL1# 
  is '#1��բ';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.EMPTYL2# 
  is '#2��բ';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.STARTTIME 
  is 'ͳ����ʼʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.ENDTIME 
  is 'ͳ�ƽ�βʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_YXJC_LOCKSHIPCOMPREHENSED.STATUS 
  is '��¼״̬';
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
  is 'բ�ҹ�����Ϣ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERID 
  is 'բ�ұ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERNAME 
  is 'բ������';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.LNO 
  is '��բ���';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERWIDTH 
  is '��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERLENGTH 
  is '��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERSTATUS 
  is '״̬';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.ULTIME 
  is '���й�բʱ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.DLTIME 
  is '���й�բʱ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.UDSTATUS 
  is '������״̬';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.LTIMES 
  is '��բ����';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.CHAMBERREMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKCHAMBERMANAGEI.STATUS 
  is '��¼״̬';
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
  is '��բ��������';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.LOCKLEVELID 
  is '��բ�������';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.LOCKLEVELNAME 
  is '��բ�����������';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKLEVELM.STATUS 
  is '��¼״̬';
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
  is '��բ���Դ����';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.LOCKPROPERTYID 
  is '��բ���Դ���';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.LOCKPROPERTYNAME 
  is '��բ��������';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKPROPERTYM.STATUS 
  is '��¼״̬';
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
  is '��բ״̬�����';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.LOCKSTATUSID 
  is '��բ״̬����';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.LOCKSTATUSNAME 
  is '��բ״̬����';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.WRITETIME 
  is 'д��ʱ��';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.RESERVEFLAG 
  is 'Ԥ����־';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.REMARK 
  is '��ע';
-- Add comments to the columns 
comment on column TB_FDGG_LOCKSTATUSM.STATUS 
  is '��¼״̬';
alter table TB_FDGG_LOCKSTATUSM
  add constraint PK_LOCKSTATUSM primary key (LOCKSTATUSID);

