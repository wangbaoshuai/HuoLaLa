--删除表--
drop table forum;
drop table reply;
drop table new;
drop table puborder;
drop table getorder;
drop table car;
drop table manager;
drop table company;
drop table goodtype;
drop table cartype;

drop sequence user_seq;
drop sequence gt_seq;
drop sequence ct_seq;
drop sequence pub_seq;
drop sequence get_seq;
drop sequence new_seq;
drop sequence reply_seq;
drop sequence forum_seq;
--物品类型表--
create table goodtype(
gtid number(8) primary key,
gtname nvarchar2(20)
); 
create sequence gt_seq start with 0 increment by 1 minvalue 0;
insert into goodtype values (gt_seq.nextval,'食品');
insert into goodtype values (gt_seq.nextval,'设备');
insert into goodtype values (gt_seq.nextval,'煤炭');
insert into goodtype values (gt_seq.nextval,'矿产');
insert into goodtype values (gt_seq.nextval,'钢材');
insert into goodtype values (gt_seq.nextval,'粮食');
insert into goodtype values (gt_seq.nextval,'饲料');
insert into goodtype values (gt_seq.nextval,'建材');
insert into goodtype values (gt_seq.nextval,'木材');
insert into goodtype values (gt_seq.nextval,'饮料');
insert into goodtype values (gt_seq.nextval,'水果');
insert into goodtype values (gt_seq.nextval,'蔬菜');
insert into goodtype values (gt_seq.nextval,'药品');
insert into goodtype values (gt_seq.nextval,'服饰鞋包');
insert into goodtype values (gt_seq.nextval,'畜产品');
insert into goodtype values (gt_seq.nextval,'日用百货');
insert into goodtype values (gt_seq.nextval,'化工产品');
insert into goodtype values (gt_seq.nextval,'电子电器');
insert into goodtype values (gt_seq.nextval,'汽配');
insert into goodtype values (gt_seq.nextval,'汽车摩托');
insert into goodtype values (gt_seq.nextval,'图示音像');
insert into goodtype values (gt_seq.nextval,'危险品');
insert into goodtype values (gt_seq.nextval,'文体用品');
insert into goodtype values (gt_seq.nextval,'工艺礼品');
insert into goodtype values (gt_seq.nextval,'其他');
--汽车类型表--
create table cartype(
ctid number(8) primary key,
ctname nvarchar2(20)
); 
create sequence ct_seq start with 0 increment by 1 minvalue 0;
insert into cartype values (ct_seq.nextval,'厢式货车');
insert into cartype values (ct_seq.nextval,'中巴货车');
insert into cartype values (ct_seq.nextval,'面包车');
insert into cartype values (ct_seq.nextval,'高栏车');
insert into cartype values (ct_seq.nextval,'中栏车');
insert into cartype values (ct_seq.nextval,'低栏车');
insert into cartype values (ct_seq.nextval,'冷藏车');
insert into cartype values (ct_seq.nextval,'保温车');
insert into cartype values (ct_seq.nextval,'全挂车');
insert into cartype values (ct_seq.nextval,'半挂车');
insert into cartype values (ct_seq.nextval,'集装箱车');
insert into cartype values (ct_seq.nextval,'轿车运输车');
insert into cartype values (ct_seq.nextval,'铁笼车');
insert into cartype values (ct_seq.nextval,'罐式车');
insert into cartype values (ct_seq.nextval,'自卸车');
insert into cartype values (ct_seq.nextval,'危险品车');
insert into cartype values (ct_seq.nextval,'加长挂车');
insert into cartype values (ct_seq.nextval,'平板车');
insert into cartype values (ct_seq.nextval,'其他');
--==========================================类型完==============================================
create sequence user_seq start with 0 increment by 1 minvalue 0;
--货源人--
create table company(
cid number(8) primary key,
cname nvarchar2(50),--公司名
cintro nvarchar2(2000),--公司简介
type nvarchar2(2),---1表示货源，2表示送货人呢
loginname nvarchar2(12),--登录名
loginpass nvarchar2(16),--登录密码
phone nvarchar2(11),--公司电话
cvip nvarchar2(20),--VIP验证
caddr nvarchar2(200),--公司地址
images  nvarchar2(500),--图片
cstatus nvarchar2(2)--冻结2--其他都不是
);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'晋煤集团','晋煤集团是山西省重点企业之一，位于山西晋城，有50年的历史，主要经营煤炭，能源等',
'1','boss','123456','13888888888','认证公司','山西晋城','com1.jpg',0);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'太钢集团','太钢集团是山西省重点企业之一，位于山西太原，有70年的历史，主要经营钢材',
'1','tgjt','123456','13988888228','认证公司','山西太原','com2.jpg',0);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'北京昌平物流所','北京昌平物流所，有50年的历史，主要经营各种物流资源，专业物流50年',
'1','wlgs1','123456','13888658888','认证公司','北京昌平区','com1.jpg',0);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'新疆塔塔木集团','新疆塔塔木集团重点企业之一，位于新疆，有70年的历史，主要经营各种物资',
'1','wlgs2','123456','13988884528','认证公司','新疆格尔木','com2.jpg',0);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'喜果家具','喜果家具，有50年的历史，主要经营各种家具，专业家具50年',
'1','wlgs3','123456','13865658888','认证公司','内蒙古锡林郭勒','com1.jpg',0);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'调调有限公司','调调有限公司是青岛重点企业之一，位于新疆，有70年的历史，主要经营各种物资',
'1','wlgs4','123456','13988654528','认证公司','山东青岛','com2.jpg',0);
--送货人(车)
create table car(
cid number(8) primary key,
cname nvarchar2(10),--车主姓名
loginname nvarchar2(12),--登录名
loginpass nvarchar2(16),--登录密码
type nvarchar2(2),---1表示货源，2表示送货人,管理员
phone nvarchar2(11),--联系电话
cnumber nvarchar2(10),--车牌号
caddr nvarchar2(200),--车辆所在地
cload number(8,2),-- 载重 ，单位吨；
cstatus nvarchar2(2),-- 状态 冻结2--其他都不是
cvip nvarchar2(20),--VIP验证
images  nvarchar2(500),--图片
csize number(8,2),-- 车长 ，单位米；
collect  nvarchar2(500),--收藏
ctype  number(8) references  cartype(ctid)--车type外键
);
insert into car(cid,cname,loginname,loginpass,type,phone,cnumber,caddr,cload,cstatus,cvip,images,csize,collect,ctype)values(user_seq.nextval,'张三','zhangsan','123456','2','13935645621','晋A-29999','山西太原',50,
0,'认证车辆','car1.jpg',13,'',1);
insert into car(cid,cname,loginname,loginpass,type,phone,cnumber,caddr,cload,cstatus,cvip,images,csize,collect,ctype)values(user_seq.nextval,'李四','lisi','123456','2','13955555621','晋E-25494','山西晋城',30,
0,'认证车辆','car2.jpg',13,'',2);
--管理员
create table manager(
mid number(8) primary key,
mname nvarchar2(10),
loginname nvarchar2(12),
loginpass nvarchar2(16),
type nvarchar2(2)---1表示货源，2表示送货人,管理员
);

insert into manager(mid,mname,loginname,loginpass,type)values(user_seq.nextval,'管理员1','admin','admin','3');
----======================================用户完=============================================================



--puborder发布的订单
create table puborder(
pid number(8) primary key,
cid number(8) references company(cid),--外键货源人
staraddr  nvarchar2(200),--发货地
finishaddr nvarchar2(200),--目标地
startime date,--发布时间
finishtime date,--结束时间
price number(8,2),--价格
weight number(8,2),--总重
unit nvarchar2(6),--重量单位 公斤/吨
sale number(8,2),--已售
starweight number(8,2),--起步重量
space number(8,2),--规格 一平米多少单位重量
goodtype number(8) references  goodtype(gtid),--物品type外键
goodname nvarchar2(50),--商品名
status nvarchar2(2),--下线2--其他都不是
images  nvarchar2(500)--图片
);
create sequence pub_seq start with 0 increment by 1 minvalue 0;
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
6,'山西晋城凤西广场','河南鞍山各分物流站',sysdate,to_date('2017-11-11','yyyy-mm-dd'),108,900,'吨',0,20,30,3,'煤炭','0','1.jpg');
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
7,'山西太原杏花岭太古集团','北京朝阳区手工坊小区50号',sysdate,to_date('2017-08-11','yyyy-mm-dd'),208,100,'吨',0,20,60,5,'钢铁','0','2.jpg');
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
40,'北京昌平联合大学','陕西西安过五关区50号',sysdate,to_date('2017-11-11','yyyy-mm-dd'),10.8,900,'吨',0,20,30,7,'书籍','0','1.jpg');
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
41,'新疆格尔木经济示范岗','北京昌平爽三大物流站',sysdate,to_date('2017-08-11','yyyy-mm-dd'),128,100,'吨',0,20,60,8,'电器','0','2.jpg');
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
42,'内蒙古锡林郭勒国玺家具','山西太谷县山西农大',sysdate,to_date('2017-11-11','yyyy-mm-dd'),98,900,'吨',0,20,30,9,'材料','0','1.jpg');
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
43,'山东青岛吉利宝安区','山西太原杏花岭物流广场',sysdate,to_date('2017-08-11','yyyy-mm-dd'),100,100,'吨',0,20,60,11,'汽车','0','2.jpg');
--getorder接收的订单
create table getorder(
gid number(8) primary key,
cid number(8) references car(cid),--外键送货人
pid number(8) references puborder(pid),--外键发布的单
weight number(8,2),--订单总重
time date,--接单时间
beizhu varchar2(200),
status nvarchar2(10)--1.下单成功，2.货主取消，3.货主接单，4.已完成
);
create sequence get_seq start with 0 increment by 1 minvalue 0;

insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,3,3,30,sysdate,'明天到车','下单成功');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,4,4,30,sysdate,'明天到车','下单成功');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,3,40,30,sysdate,'3号到车','下单成功');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,4,41,30,sysdate,'明天早上到车','下单成功');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,3,42,30,sysdate,'7号到车','下单成功');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,4,43,30,sysdate,'下午到车','下单成功');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,22,44,30,sysdate,'明天到车','下单成功');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,22,45,30,sysdate,'明天下午到车','下单成功');
--===================================================================扩展==============================================
--论坛
--楼主
create table forum
(
fid number(8) primary key,
ftitle nvarchar2(100),
fcontent nvarchar2(2000), 
cid number(8)  references car(cid),  --送货人
comid number(8)  references company(cid), --货源
image  nvarchar2(500),--图片
fdate date

);
create sequence forum_seq start with 0 increment by 1 minvalue 0;

insert into forum(fid,ftitle,fcontent,cid,comid,fdate)values(forum_seq.nextval,'【公告】账号发言被隐藏改密无法解封请看这里','要有把路走绝的精神，激流勇退是一种境界，把路走绝是一种精神。坚持到底，不会错的；坚持到底，就是成功！',
3,null,sysdate);
insert into forum(fid,ftitle,fcontent,cid,comid,fdate)values(forum_seq.nextval,'【倡议】贴吧吧吧友自律签到大楼','要有把路走绝的精神，激流勇退是一种境界，把路走绝是一种精神。坚持到底，不会错的；坚持到底，就是成功！',
4,null,sysdate);
insert into forum(fid,ftitle,fcontent,cid,comid,fdate)values(forum_seq.nextval,'社区，你我共同的家园遵守法律法规，遵守贴吧协议','要有把路走绝的精神，激流勇退是一种境界，把路走绝是一种精神。坚持到底，不会错的；坚持到底，就是成功！',
null,6,sysdate);
insert into forum(fid,ftitle,fcontent,cid,comid,fdate)values(forum_seq.nextval,'在版面屠版式发贴或者在不相干主题下刷回复，都会被处理哦','要有把路走绝的精神，激流勇退是一种境界，把路走绝是一种精神。坚持到底，不会错的；坚持到底，就是成功！',
3,null,sysdate);
insert into forum(fid,ftitle,fcontent,cid,comid,fdate)values(forum_seq.nextval,'关于双浦镇铜鉴湖村建设美丽乡村，心在流血','要有把路走绝的精神，激流勇退是一种境界，把路走绝是一种精神。坚持到底，不会错的；坚持到底，就是成功！',
null,7,sysdate);
--回复
create table reply
(
rid number(8) primary key,
rcontent nvarchar2(2000),
cid number(8)  references car(cid),  --送货人
comid number(8)  references company(cid), --货源
fid number(8)  references forum(fid),  --外键forum
image  nvarchar2(500),--图片
rdate date
);
create sequence reply_seq start with 0 increment by 1 minvalue 0;
insert into reply(rid,rcontent,cid,comid,fid,rdate)values(reply_seq.nextval,'火钳留名',3,null,1,sysdate);
insert into reply(rid,rcontent,cid,comid,fid,rdate)values(reply_seq.nextval,'火钳留名',4,null,2,sysdate);
insert into reply(rid,rcontent,cid,comid,fid,rdate)values(reply_seq.nextval,'火钳留名',null,6,3,sysdate);
insert into reply(rid,rcontent,cid,comid,fid,rdate)values(reply_seq.nextval,'同意',3,null,1,sysdate);
--新闻
create table new(
nid number(8) primary key,
ntitle varchar2(100),
ncontent varchar2(2500), 
nimage varchar2(100),--图片
ndate date
);
create sequence new_seq start with 0 increment by 1 minvalue 0;
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'中国税改打击澳企销量，缓期一年仍需关注直邮和监管','雨果网从外媒近日报道中了解到，自中国跨境电商新政推出以后，澳大利亚某大型零售商的维生素及其他产品销售额大幅下降。原本该零售企业的商品在代购之间很流行，但自中国跨境税改推出以后，该企业的Blackmores和Swisse产品销量忽然就下降了。
 该零售企业一位不愿具名的代表称：“我们商店里维生素产品销售经理表示，自4月中国税改以来，维生素的销售额大幅下降，该类别产品所受的打击很大。”
 该澳洲零售商店销售额的下降同中国跨境电商税改有关，自4月8日以后，发货到保税仓的澳洲产品数量就下降了50%。
 进口市场下滑促使中国当局缓期一年执行新政。未来几周可能会看到澳洲零售商销售额恢复上升趋势，中国的港口以及仓库也因新政缓期一年而渐渐恢复“正常”运作。
 Swisse首席执行官Radek Sali表示，澳洲零售销售确实受到中国跨境电商新政的影响，不过最近开始回升。他说：“买家在政策还不确定时总是很谨慎，但现在市场敏感期似乎已经过了。过去两个星期我们看到了好的迹象，买家和代购又开始行动了，推动了澳洲主要零售商销售的增长。”
 Blackmores首席执行官Christine Holgate拒绝回答新政下，公司销售增长还是下降的问题。她说：“我们很欢迎中国跨境电商税改缓期一年，也希望中国能继续支持我们的品牌和产品。”
 另一家深受中国消费者喜爱的乳制品公司A2表示，其婴儿配方奶粉品牌Platinum销售仍然很强劲。该公司首席执行官Peter Nathan表示公司的预测收入不会受影响。
 ','new1.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'七部委启动第三批电子商务示范城市申报工作','各省、自治区、直辖市及计划单列市、新疆生产建设兵团发展改革委、商务主管部门、人民银行分支机构、直属海关、国家税务局、地方税务局、工商局、直属检验检疫局、质量技术监督局，有关中央管理企业：
 为贯彻落实《国务院关于大力发展电子商务加快培育经济新动力的意见》（国发[2015]24号），切实发挥电子商务对促进经济增长和产业转型升级的作用，带动大众创业和万众创新，加快培育经济发展新动力，国家发展改革委、商务部、人民银行、海关总署、税务总局、工商总局、质检总局将启动第三批电子商务示范城市创建工作，并组织实施国家电子商务示范城市电子商务重大工程。现将有关工作通知如下：
 一、启动第三批电子商务示范城市创建工作
 以电子商务促进区域经济发展，带动产业转型升级，提高城市经济影响力和辐射力。因地制宜，探索完善电子商务发展环境，推进电子商务的法规政策在局部地区取得突破性进展，为国家制定有利于电子商务发展的法规政策体系提供实践依据。
 （一）创建电子商务示范城市的主要任务
 1、完善电子商务法规政策环境。研究制定符合地方特点、有利于电子商务健康快速发展的法规政策，编制电子商务发展规划，研究出台支持物流快递行业发展的鼓励政策，制定支持和鼓励金融机构为中小网商、中小企业应用电子商务提供小额贷款服务的政策，以及鼓励支付技术创新应用的政策，建立完善电子商务统计制度。
 2、健全电子商务支撑体系。完善智能物流基础设施，建设智能物流信息平台，支持物流（快递）配送站、智能快件箱等物流设施建设，推动快递服务网络向农村地区延伸。推动电子支付创新应用，大力发展移动支付，促进电子商务信用信息共享，构建适应电子商务发展的支撑环境。
 3、加强电子商务基础设施和交易保障设施建设。完善电子商务可信交易保障机制，建立网络交易纠纷处理机制，积极推进跨境电子商务综合服务平台建设，实现通信、物流、支付等基础设施同步推进、协调发展。
 4、积极培育电子商务服务。立足城市产业发展特点和优势，引导各类电子商务业态和功能聚集，推动电子商务产业统筹协调、错位发展。大力支持第三方电子商务交易平台建设，促进本地区电子商务服务业发展。推动特色农产品电子商务平台建设，以电子商务助力精准扶贫、精准脱贫。大力发展线上线下互动，推动实体店转型升级。支持电子商务与物流协同发展。
 ','new2.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'传化陆鲸打造长途卡车司机消费商圈','传化股份5月27日晚间公告，公司子公司传化物流集团有限公司以自有资金1亿元投资设立浙江传化陆鲸科技有限公司。将依托传化公路港平台优势和影响力，针对长途公路货运市场，围绕卡车司机的生意与生活以及卡车消费商圈，深度服务长途卡车司机，打造全国长途运力池。
 专业化学品制造商起家的传化跨界货运物流，走的却是物流园区与货运APP之外的第三条道路：在线下建立公路港城市物流中心的同时，传化物流在线上也在建一个信息化的网络系统。这也是一条险途，但确实给热闹而混乱的货运行业，提出了一种新的可能性。　
 公路货运物流的顽疾
 根据《交通运输“十二五”发展规划》，2015年底，全国高速公路通车总里程将达到10.8万公里。公路网总里程达到450万公里，国家投资上百万亿。公路物流的主干和支干构成了中国经济的毛细血管，中国公路物流货运量占到整体货运量的50%。','new3.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'云南首家跨境运输与国际物流协会成立','云南省的跨境运输有了自己的物流协会！经过近一年的筹备，近日，云南省跨境运输与国际物流协会在昆明理工大学成立。
 云南省的跨境运输有了自己的物流协会！经过近一年的筹备，近日，云南省跨境运输与国际物流协会在昆明理工大学成立。
 今后，协会将在实施国家“一带一路”的愿景中，通过建立和加强国内外物流行业的交流与合作、开展跨境运输与国际物流的业务经营和学术研究，维护本行业和会员企业的共同利益与合法权益，发挥联系政府主管部门与物流企业的桥梁与纽带作用，推动云南省跨境运输与国际物流产业的发展。 ','new4.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'顺丰首登全球十强 5年内中国快递可望跻身前4','即便算上美日等国的邮政指定经营者，顺丰速运也足以跻身全球前十大快递包裹运营商。这是中国快递企业首次达到这一高度。 

根据各公司2015年财报，顺丰在专业快递公司中排名第七，其前分别是德国邮政敦豪、联合包裹、联邦快递、雅玛多、佐川急便、TNT。如果计入美国邮政、日本邮政的包裹寄递板块，顺丰排名第九，控股欧洲第二大快递DPD的法国邮政排名第十。
 
顺丰首登全球十强 五年内中国快递可望跻身前四 

顺丰首登全球十强 5年内中国快递可望跻身前4 


    　规模方面 

前三大巨头以400亿～600亿美元的收入遥遥领先，且各用数百架飞机编织出一张覆盖全球的网络，为后来者筑起高高的壁垒；其他几家专业快递公司的业务收入则处于70亿～130亿美元区间，共同构成了第二梯队。
 ','new5.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'青岛快递自提柜今年将超万台 被质疑出问题找谁','据中国之声《新闻晚高峰》报道，一个个快递从千里之外发来，家里没人不方便接收怎么办?还有：家庭住址、姓名、电话等信息清楚地写在快递单上，如何在接收快递时保护个人隐私?记者探访发现，青岛的快递自提柜发展迅速，规模在今年将超过1万台。但也有市民提出疑惑：缺少了当面签收的环节，快件有问题该怎么办?
 据中国之声《新闻晚高峰》报道，一个个快递从千里之外发来，家里没人不方便接收怎么办?还有：家庭住址、姓名、电话等信息清楚地写在快递单上，如何在接收快递时保护个人隐私?记者探访发现，青岛的快递自提柜发展迅速，规模在今年将超过1万台。但也有市民提出疑惑：缺少了当面签收的环节，快件有问题该怎么办?
 在青岛银川路上的一个居民小区，下班回家的市民刘女士在智能自提柜前，输入短信接收的取件密码，不到一分钟就取出了自己的快递包裹。
 ','new6.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'龙头转型提速电商成新势力','九江镇作为南海制造业起步最早的老牌工业镇，多年来形成金属制品、家具制造、服装纺织、包装印刷、工程塑料等传统产业集聚。九江水运航道资源丰富、路网交通发达，也为产业转型升级增添了优势。上周一，佛山民营经济大调研走进南海区九江镇，与雄塑、九江酒厂、林氏木业、必得福无纺布等民企高管调研座谈，并走进广东雄塑进行实地调研。
 九江镇作为南海制造业起步最早的老牌工业镇，多年来形成金属制品、家具制造、服装纺织、包装印刷、工程塑料等传统产业集聚。九江水运航道资源丰富、路网交通发达，也为产业转型升级增添了优势。上周一，佛山民营经济大调研走进南海区九江镇，与雄塑、九江酒厂、林氏木业、必得福无纺布等民企高管调研座谈，并走进广东雄塑进行实地调研。 
2015年，九江实现工业总产值260.43亿元，较去年同期增长3.43%。在传统产业升级上，医卫、电商两大行业引领产业转型步伐。截至今年第一季度，九江镇工商登记共10718户，其中企业3782户，工业制造业企业1962户，其中规模以上工业企业200户。
 民企掀起转型新浪潮 
','new7.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'江苏悦达港口公告','一、江苏悦达港口物流发展有限公司负责实施的江苏悦达港口物流园一期工程项目，已经上级部门批准建设，现决定对该项目工程施工进行公开招标，择优选定工程施工承包人。 

二、江苏大洲工程项目管理有限公司受招标人委托具体负责本工程的招标事宜。 

三、项目概况 

（1）项目名称： 江苏悦达港口物流园一期工程 

（2）工期要求： 180日历天 

（3）建设规模： 总投资约1655万元 

（4）质量要求： 相关工程质量验收规范合格标准 

（5）资金来源： 自筹 

四、申请人应当具备的主要资格条件及要求： 

（1）申请人资质类别和等级：必须具有建设行政主管部门核发的 市政公用工程施工总承包贰级或以上施工资质且取得安全生产许可证的独立法人企业。 

（2）项目经理资质和要求：必须是投标人本单位正式职工，具有建设行政主管部门核发的 市政公用工程类贰级注册建造师资质证书，且同时具有安全生产考核合格证（B类）。
','new8.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'解密大件物流的大数据！','【盘点】“六变”——纵观居家大件物流新发展 

1、电子商务带动居家大件物流高速发展：2015年单量环比增长78%，物流发展跑赢大盘。 

2、大件物流运输质量显著提高：破损率上，2015年各品类破损率较2014年有大幅下降;配送品上，种类也呈现逐渐拓展趋势。 

3、全国无盲区覆盖：基于网络的发展，数据的运用，24小时到达区县个数1567个，占54%;72小时全国零盲区覆盖。　 

4、送达速度屡创新高：数据显示，日日顺物流创下2015年双十一大件物流首单14分钟送达的记录，全国24小时送达区县范围高达70%以上。 　 

5、海量吞吐达物流新高点：资源配置上，日日顺物流做了较大的投入，其仓储面积高达500万平方米，干线年发运量达4000万平方米，零担干线发运量达1500万平方米。
 
6、年度之最：报告还分别盘点了用户和司机的“年度之最”。用户层面，日日顺物流创下了最北、最南、最西、最东及海拔最高(4500米)的记录;司机层面，日日顺物流搭建创业平台，更加充分地调动了社会力量的积极性。
 ','new9.jsp',sysdate);
--===============================================================查============================================
select  * from  forum;
select  * from  reply;
select  * from  new;
select  * from  puborder;
select  * from  getorder;
select  * from  car;
select  * from  manager;
select  * from  company;
select  * from  goodtype;
select  * from  cartype;
