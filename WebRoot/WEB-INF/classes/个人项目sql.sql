--ɾ����--
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
--��Ʒ���ͱ�--
create table goodtype(
gtid number(8) primary key,
gtname nvarchar2(20)
); 
create sequence gt_seq start with 0 increment by 1 minvalue 0;
insert into goodtype values (gt_seq.nextval,'ʳƷ');
insert into goodtype values (gt_seq.nextval,'�豸');
insert into goodtype values (gt_seq.nextval,'ú̿');
insert into goodtype values (gt_seq.nextval,'���');
insert into goodtype values (gt_seq.nextval,'�ֲ�');
insert into goodtype values (gt_seq.nextval,'��ʳ');
insert into goodtype values (gt_seq.nextval,'����');
insert into goodtype values (gt_seq.nextval,'����');
insert into goodtype values (gt_seq.nextval,'ľ��');
insert into goodtype values (gt_seq.nextval,'����');
insert into goodtype values (gt_seq.nextval,'ˮ��');
insert into goodtype values (gt_seq.nextval,'�߲�');
insert into goodtype values (gt_seq.nextval,'ҩƷ');
insert into goodtype values (gt_seq.nextval,'����Ь��');
insert into goodtype values (gt_seq.nextval,'���Ʒ');
insert into goodtype values (gt_seq.nextval,'���ðٻ�');
insert into goodtype values (gt_seq.nextval,'������Ʒ');
insert into goodtype values (gt_seq.nextval,'���ӵ���');
insert into goodtype values (gt_seq.nextval,'����');
insert into goodtype values (gt_seq.nextval,'����Ħ��');
insert into goodtype values (gt_seq.nextval,'ͼʾ����');
insert into goodtype values (gt_seq.nextval,'Σ��Ʒ');
insert into goodtype values (gt_seq.nextval,'������Ʒ');
insert into goodtype values (gt_seq.nextval,'������Ʒ');
insert into goodtype values (gt_seq.nextval,'����');
--�������ͱ�--
create table cartype(
ctid number(8) primary key,
ctname nvarchar2(20)
); 
create sequence ct_seq start with 0 increment by 1 minvalue 0;
insert into cartype values (ct_seq.nextval,'��ʽ����');
insert into cartype values (ct_seq.nextval,'�аͻ���');
insert into cartype values (ct_seq.nextval,'�����');
insert into cartype values (ct_seq.nextval,'������');
insert into cartype values (ct_seq.nextval,'������');
insert into cartype values (ct_seq.nextval,'������');
insert into cartype values (ct_seq.nextval,'��س�');
insert into cartype values (ct_seq.nextval,'���³�');
insert into cartype values (ct_seq.nextval,'ȫ�ҳ�');
insert into cartype values (ct_seq.nextval,'��ҳ�');
insert into cartype values (ct_seq.nextval,'��װ�䳵');
insert into cartype values (ct_seq.nextval,'�γ����䳵');
insert into cartype values (ct_seq.nextval,'������');
insert into cartype values (ct_seq.nextval,'��ʽ��');
insert into cartype values (ct_seq.nextval,'��ж��');
insert into cartype values (ct_seq.nextval,'Σ��Ʒ��');
insert into cartype values (ct_seq.nextval,'�ӳ��ҳ�');
insert into cartype values (ct_seq.nextval,'ƽ�峵');
insert into cartype values (ct_seq.nextval,'����');
--==========================================������==============================================
create sequence user_seq start with 0 increment by 1 minvalue 0;
--��Դ��--
create table company(
cid number(8) primary key,
cname nvarchar2(50),--��˾��
cintro nvarchar2(2000),--��˾���
type nvarchar2(2),---1��ʾ��Դ��2��ʾ�ͻ�����
loginname nvarchar2(12),--��¼��
loginpass nvarchar2(16),--��¼����
phone nvarchar2(11),--��˾�绰
cvip nvarchar2(20),--VIP��֤
caddr nvarchar2(200),--��˾��ַ
images  nvarchar2(500),--ͼƬ
cstatus nvarchar2(2)--����2--����������
);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'��ú����','��ú������ɽ��ʡ�ص���ҵ֮һ��λ��ɽ�����ǣ���50�����ʷ����Ҫ��Ӫú̿����Դ��',
'1','boss','123456','13888888888','��֤��˾','ɽ������','com1.jpg',0);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'̫�ּ���','̫�ּ�����ɽ��ʡ�ص���ҵ֮һ��λ��ɽ��̫ԭ����70�����ʷ����Ҫ��Ӫ�ֲ�',
'1','tgjt','123456','13988888228','��֤��˾','ɽ��̫ԭ','com2.jpg',0);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'������ƽ������','������ƽ����������50�����ʷ����Ҫ��Ӫ����������Դ��רҵ����50��',
'1','wlgs1','123456','13888658888','��֤��˾','������ƽ��','com1.jpg',0);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'�½�����ľ����','�½�����ľ�����ص���ҵ֮һ��λ���½�����70�����ʷ����Ҫ��Ӫ��������',
'1','wlgs2','123456','13988884528','��֤��˾','�½����ľ','com2.jpg',0);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'ϲ���Ҿ�','ϲ���Ҿߣ���50�����ʷ����Ҫ��Ӫ���ּҾߣ�רҵ�Ҿ�50��',
'1','wlgs3','123456','13865658888','��֤��˾','���ɹ����ֹ���','com1.jpg',0);
insert into company(cid,cname,cintro,type,loginname,loginpass,phone,cvip,caddr,images,cstatus)values(user_seq.nextval,'�������޹�˾','�������޹�˾���ൺ�ص���ҵ֮һ��λ���½�����70�����ʷ����Ҫ��Ӫ��������',
'1','wlgs4','123456','13988654528','��֤��˾','ɽ���ൺ','com2.jpg',0);
--�ͻ���(��)
create table car(
cid number(8) primary key,
cname nvarchar2(10),--��������
loginname nvarchar2(12),--��¼��
loginpass nvarchar2(16),--��¼����
type nvarchar2(2),---1��ʾ��Դ��2��ʾ�ͻ���,����Ա
phone nvarchar2(11),--��ϵ�绰
cnumber nvarchar2(10),--���ƺ�
caddr nvarchar2(200),--�������ڵ�
cload number(8,2),-- ���� ����λ�֣�
cstatus nvarchar2(2),-- ״̬ ����2--����������
cvip nvarchar2(20),--VIP��֤
images  nvarchar2(500),--ͼƬ
csize number(8,2),-- ���� ����λ�ף�
collect  nvarchar2(500),--�ղ�
ctype  number(8) references  cartype(ctid)--��type���
);
insert into car(cid,cname,loginname,loginpass,type,phone,cnumber,caddr,cload,cstatus,cvip,images,csize,collect,ctype)values(user_seq.nextval,'����','zhangsan','123456','2','13935645621','��A-29999','ɽ��̫ԭ',50,
0,'��֤����','car1.jpg',13,'',1);
insert into car(cid,cname,loginname,loginpass,type,phone,cnumber,caddr,cload,cstatus,cvip,images,csize,collect,ctype)values(user_seq.nextval,'����','lisi','123456','2','13955555621','��E-25494','ɽ������',30,
0,'��֤����','car2.jpg',13,'',2);
--����Ա
create table manager(
mid number(8) primary key,
mname nvarchar2(10),
loginname nvarchar2(12),
loginpass nvarchar2(16),
type nvarchar2(2)---1��ʾ��Դ��2��ʾ�ͻ���,����Ա
);

insert into manager(mid,mname,loginname,loginpass,type)values(user_seq.nextval,'����Ա1','admin','admin','3');
----======================================�û���=============================================================



--puborder�����Ķ���
create table puborder(
pid number(8) primary key,
cid number(8) references company(cid),--�����Դ��
staraddr  nvarchar2(200),--������
finishaddr nvarchar2(200),--Ŀ���
startime date,--����ʱ��
finishtime date,--����ʱ��
price number(8,2),--�۸�
weight number(8,2),--����
unit nvarchar2(6),--������λ ����/��
sale number(8,2),--����
starweight number(8,2),--������
space number(8,2),--��� һƽ�׶��ٵ�λ����
goodtype number(8) references  goodtype(gtid),--��Ʒtype���
goodname nvarchar2(50),--��Ʒ��
status nvarchar2(2),--����2--����������
images  nvarchar2(500)--ͼƬ
);
create sequence pub_seq start with 0 increment by 1 minvalue 0;
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
6,'ɽ�����Ƿ����㳡','���ϰ�ɽ��������վ',sysdate,to_date('2017-11-11','yyyy-mm-dd'),108,900,'��',0,20,30,3,'ú̿','0','1.jpg');
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
7,'ɽ��̫ԭ�ӻ���̫�ż���','�����������ֹ���С��50��',sysdate,to_date('2017-08-11','yyyy-mm-dd'),208,100,'��',0,20,60,5,'����','0','2.jpg');
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
40,'������ƽ���ϴ�ѧ','���������������50��',sysdate,to_date('2017-11-11','yyyy-mm-dd'),10.8,900,'��',0,20,30,7,'�鼮','0','1.jpg');
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
41,'�½����ľ����ʾ����','������ƽˬ��������վ',sysdate,to_date('2017-08-11','yyyy-mm-dd'),128,100,'��',0,20,60,8,'����','0','2.jpg');
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
42,'���ɹ����ֹ��չ����Ҿ�','ɽ��̫����ɽ��ũ��',sysdate,to_date('2017-11-11','yyyy-mm-dd'),98,900,'��',0,20,30,9,'����','0','1.jpg');
insert into puborder(pid,cid,staraddr,finishaddr,startime,finishtime,price,weight,unit,sale,starweight,space,goodtype,goodname,status,images)values(pub_seq.nextval,
43,'ɽ���ൺ����������','ɽ��̫ԭ�ӻ��������㳡',sysdate,to_date('2017-08-11','yyyy-mm-dd'),100,100,'��',0,20,60,11,'����','0','2.jpg');
--getorder���յĶ���
create table getorder(
gid number(8) primary key,
cid number(8) references car(cid),--����ͻ���
pid number(8) references puborder(pid),--��������ĵ�
weight number(8,2),--��������
time date,--�ӵ�ʱ��
beizhu varchar2(200),
status nvarchar2(10)--1.�µ��ɹ���2.����ȡ����3.�����ӵ���4.�����
);
create sequence get_seq start with 0 increment by 1 minvalue 0;

insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,3,3,30,sysdate,'���쵽��','�µ��ɹ�');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,4,4,30,sysdate,'���쵽��','�µ��ɹ�');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,3,40,30,sysdate,'3�ŵ���','�µ��ɹ�');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,4,41,30,sysdate,'�������ϵ���','�µ��ɹ�');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,3,42,30,sysdate,'7�ŵ���','�µ��ɹ�');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,4,43,30,sysdate,'���絽��','�µ��ɹ�');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,22,44,30,sysdate,'���쵽��','�µ��ɹ�');
insert into getorder(gid,cid,pid,weight,time,beizhu,status)values(get_seq.nextval,22,45,30,sysdate,'�������絽��','�µ��ɹ�');
--===================================================================��չ==============================================
--��̳
--¥��
create table forum
(
fid number(8) primary key,
ftitle nvarchar2(100),
fcontent nvarchar2(2000), 
cid number(8)  references car(cid),  --�ͻ���
comid number(8)  references company(cid), --��Դ
image  nvarchar2(500),--ͼƬ
fdate date

);
create sequence forum_seq start with 0 increment by 1 minvalue 0;

insert into forum(fid,ftitle,fcontent,cid,comid,fdate)values(forum_seq.nextval,'�����桿�˺ŷ��Ա����ظ����޷�����뿴����','Ҫ�а�·�߾��ľ��񣬼���������һ�־��磬��·�߾���һ�־��񡣼�ֵ��ף������ģ���ֵ��ף����ǳɹ���',
3,null,sysdate);
insert into forum(fid,ftitle,fcontent,cid,comid,fdate)values(forum_seq.nextval,'�����顿���ɰɰ�������ǩ����¥','Ҫ�а�·�߾��ľ��񣬼���������һ�־��磬��·�߾���һ�־��񡣼�ֵ��ף������ģ���ֵ��ף����ǳɹ���',
4,null,sysdate);
insert into forum(fid,ftitle,fcontent,cid,comid,fdate)values(forum_seq.nextval,'���������ҹ�ͬ�ļ�԰���ط��ɷ��棬��������Э��','Ҫ�а�·�߾��ľ��񣬼���������һ�־��磬��·�߾���һ�־��񡣼�ֵ��ף������ģ���ֵ��ף����ǳɹ���',
null,6,sysdate);
insert into forum(fid,ftitle,fcontent,cid,comid,fdate)values(forum_seq.nextval,'�ڰ�������ʽ���������ڲ����������ˢ�ظ������ᱻ����Ŷ','Ҫ�а�·�߾��ľ��񣬼���������һ�־��磬��·�߾���һ�־��񡣼�ֵ��ף������ģ���ֵ��ף����ǳɹ���',
3,null,sysdate);
insert into forum(fid,ftitle,fcontent,cid,comid,fdate)values(forum_seq.nextval,'����˫����ͭ�����彨��������壬������Ѫ','Ҫ�а�·�߾��ľ��񣬼���������һ�־��磬��·�߾���һ�־��񡣼�ֵ��ף������ģ���ֵ��ף����ǳɹ���',
null,7,sysdate);
--�ظ�
create table reply
(
rid number(8) primary key,
rcontent nvarchar2(2000),
cid number(8)  references car(cid),  --�ͻ���
comid number(8)  references company(cid), --��Դ
fid number(8)  references forum(fid),  --���forum
image  nvarchar2(500),--ͼƬ
rdate date
);
create sequence reply_seq start with 0 increment by 1 minvalue 0;
insert into reply(rid,rcontent,cid,comid,fid,rdate)values(reply_seq.nextval,'��ǯ����',3,null,1,sysdate);
insert into reply(rid,rcontent,cid,comid,fid,rdate)values(reply_seq.nextval,'��ǯ����',4,null,2,sysdate);
insert into reply(rid,rcontent,cid,comid,fid,rdate)values(reply_seq.nextval,'��ǯ����',null,6,3,sysdate);
insert into reply(rid,rcontent,cid,comid,fid,rdate)values(reply_seq.nextval,'ͬ��',3,null,1,sysdate);
--����
create table new(
nid number(8) primary key,
ntitle varchar2(100),
ncontent varchar2(2500), 
nimage varchar2(100),--ͼƬ
ndate date
);
create sequence new_seq start with 0 increment by 1 minvalue 0;
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'�й�˰�Ĵ����������������һ�������עֱ�ʺͼ��','���������ý���ձ������˽⵽�����й��羳���������Ƴ��Ժ󣬰Ĵ�����ĳ���������̵�ά���ؼ�������Ʒ���۶����½���ԭ����������ҵ����Ʒ�ڴ���֮������У������й��羳˰���Ƴ��Ժ󣬸���ҵ��Blackmores��Swisse��Ʒ������Ȼ���½��ˡ�
 ��������ҵһλ��Ը�����Ĵ���ƣ��������̵���ά���ز�Ʒ���۾����ʾ����4���й�˰��������ά���ص����۶����½���������Ʒ���ܵĴ���ܴ󡣡�
 �ð��������̵����۶���½�ͬ�й��羳����˰���йأ���4��8���Ժ󣬷�������˰�ֵİ��޲�Ʒ�������½���50%��
 �����г��»���ʹ�й����ֻ���һ��ִ��������δ�����ܿ��ܻῴ���������������۶�ָ��������ƣ��й��ĸۿ��Լ��ֿ�Ҳ����������һ��������ָ���������������
 Swisse��ϯִ�й�Radek Sali��ʾ��������������ȷʵ�ܵ��й��羳����������Ӱ�죬���������ʼ��������˵������������߻���ȷ��ʱ���Ǻܽ������������г��������ƺ��Ѿ����ˡ���ȥ�����������ǿ����˺õļ�����Һʹ����ֿ�ʼ�ж��ˣ��ƶ��˰�����Ҫ���������۵���������
 Blackmores��ϯִ�й�Christine Holgate�ܾ��ش������£���˾�������������½������⡣��˵�������Ǻܻ�ӭ�й��羳����˰�Ļ���һ�꣬Ҳϣ���й��ܼ���֧�����ǵ�Ʒ�ƺͲ�Ʒ����
 ��һ�������й�������ϲ��������Ʒ��˾A2��ʾ����Ӥ���䷽�̷�Ʒ��Platinum������Ȼ��ǿ�����ù�˾��ϯִ�й�Peter Nathan��ʾ��˾��Ԥ�����벻����Ӱ�졣
 ','new1.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'�߲�ί������������������ʾ�������걨����','��ʡ����������ֱϽ�м��ƻ������С��½�����������ŷ�չ�ĸ�ί���������ܲ��š��������з�֧������ֱ�����ء�����˰��֡��ط�˰��֡����̾֡�ֱ��������߾֡����������ල�֣��й����������ҵ��
 Ϊ�᳹��ʵ������Ժ���ڴ�����չ��������ӿ����������¶����������������[2015]24�ţ�����ʵ���ӵ�������Դٽ����������Ͳ�ҵת�����������ã��������ڴ�ҵ�����ڴ��£��ӿ��������÷�չ�¶��������ҷ�չ�ĸ�ί�����񲿡��������С���������˰���ܾ֡������ܾ֡��ʼ��ֽܾ�������������������ʾ�����д�������������֯ʵʩ���ҵ�������ʾ�����е��������ش󹤳̡��ֽ��йع���֪ͨ���£�
 һ��������������������ʾ�����д�������
 �Ե�������ٽ����򾭼÷�չ��������ҵת����������߳��о���Ӱ�����ͷ�������������ˣ�̽�����Ƶ�������չ�������ƽ���������ķ��������ھֲ�����ȡ��ͻ���Խ�չ��Ϊ�����ƶ������ڵ�������չ�ķ���������ϵ�ṩʵ�����ݡ�
 ��һ��������������ʾ�����е���Ҫ����
 1�����Ƶ������񷨹����߻������о��ƶ����ϵط��ص㡢�����ڵ������񽡿����ٷ�չ�ķ������ߣ����Ƶ�������չ�滮���о���̨֧�����������ҵ��չ�Ĺ������ߣ��ƶ�֧�ֺ͹������ڻ���Ϊ��С���̡���С��ҵӦ�õ��������ṩС������������ߣ��Լ�����֧����������Ӧ�õ����ߣ��������Ƶ�������ͳ���ƶȡ�
 2����ȫ��������֧����ϵ��������������������ʩ����������������Ϣƽ̨��֧����������ݣ�����վ�����ܿ�����������ʩ���裬�ƶ���ݷ���������ũ��������졣�ƶ�����֧������Ӧ�ã�������չ�ƶ�֧�����ٽ���������������Ϣ����������Ӧ��������չ��֧�Ż�����
 3����ǿ�������������ʩ�ͽ��ױ�����ʩ���衣���Ƶ���������Ž��ױ��ϻ��ƣ��������罻�׾��״�����ƣ������ƽ��羳���������ۺϷ���ƽ̨���裬ʵ��ͨ�š�������֧���Ȼ�����ʩͬ���ƽ���Э����չ��
 4���������������������������в�ҵ��չ�ص�����ƣ����������������ҵ̬�͹��ܾۼ����ƶ����������ҵͳ��Э������λ��չ������֧�ֵ���������������ƽ̨���裬�ٽ������������������ҵ��չ���ƶ���ɫũ��Ʒ��������ƽ̨���裬�Ե�������������׼��ƶ����׼��ƶ��������չ�������»������ƶ�ʵ���ת��������֧�ֵ�������������Эͬ��չ��
 ','new2.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'����½�����쳤;����˾��������Ȧ','�����ɷ�5��27����乫�棬��˾�ӹ�˾���������������޹�˾�������ʽ�1��ԪͶ�������㽭����½���Ƽ����޹�˾�������д�����·��ƽ̨���ƺ�Ӱ��������Գ�;��·�����г���Χ�ƿ���˾���������������Լ�����������Ȧ����ȷ���;����˾��������ȫ����;�����ء�
 רҵ��ѧƷ��������ҵĴ����������������ߵ�ȴ������԰�������APP֮��ĵ�������·�������½�����·�۳����������ĵ�ͬʱ����������������Ҳ�ڽ�һ����Ϣ��������ϵͳ����Ҳ��һ����;����ȷʵ�����ֶ����ҵĻ�����ҵ�������һ���µĿ����ԡ���
 ��·�����������缲
 ���ݡ���ͨ���䡰ʮ���塱��չ�滮����2015��ף�ȫ�����ٹ�·ͨ������̽��ﵽ10.8�����·������̴ﵽ450�������Ͷ���ϰ����ڡ���·���������ɺ�֧�ɹ������й����õ�ëϸѪ�ܣ��й���·����������ռ�������������50%��','new3.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'�����׼ҿ羳�������������Э�����','����ʡ�Ŀ羳���������Լ�������Э�ᣡ������һ��ĳﱸ�����գ�����ʡ�羳�������������Э������������ѧ������
 ����ʡ�Ŀ羳���������Լ�������Э�ᣡ������һ��ĳﱸ�����գ�����ʡ�羳�������������Э������������ѧ������
 ���Э�Ὣ��ʵʩ���ҡ�һ��һ·����Ը���У�ͨ�������ͼ�ǿ������������ҵ�Ľ������������չ�羳���������������ҵ��Ӫ��ѧ���о���ά������ҵ�ͻ�Ա��ҵ�Ĺ�ͬ������Ϸ�Ȩ�棬������ϵ�������ܲ�����������ҵ��������Ŧ�����ã��ƶ�����ʡ�羳���������������ҵ�ķ�չ�� ','new4.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'˳���׵�ȫ��ʮǿ 5�����й���ݿ�������ǰ4','�����������յȹ�������ָ����Ӫ�ߣ�˳������Ҳ��������ȫ��ǰʮ���ݰ�����Ӫ�̡������й������ҵ�״δﵽ��һ�߶ȡ� 

���ݸ���˾2015��Ʊ���˳����רҵ��ݹ�˾���������ߣ���ǰ�ֱ��ǵ¹������غ������ϰ����������ݡ�����ࡢ�������㡢TNT��������������������ձ������İ����ĵݰ�飬˳�������ھţ��ع�ŷ�޵ڶ�����DPD�ķ�������������ʮ��
 
˳���׵�ȫ��ʮǿ �������й���ݿ�������ǰ�� 

˳���׵�ȫ��ʮǿ 5�����й���ݿ�������ǰ4 


    ����ģ���� 

ǰ�����ͷ��400�ڡ�600����Ԫ������ңң���ȣ��Ҹ������ټܷɻ���֯��һ�Ÿ���ȫ������磬Ϊ����������߸ߵı��ݣ���������רҵ��ݹ�˾��ҵ����������70�ڡ�130����Ԫ���䣬��ͬ�����˵ڶ��ݶӡ�
 ','new5.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'�ൺ����������꽫����̨ �����ɳ�������˭','���й�֮����������߷塷������һ������ݴ�ǧ��֮�ⷢ��������û�˲����������ô��?���У���ͥסַ���������绰����Ϣ�����д�ڿ�ݵ��ϣ�����ڽ��տ��ʱ����������˽?����̽�÷��֣��ൺ�Ŀ�������չѸ�٣���ģ�ڽ��꽫����1��̨����Ҳ����������ɻ�ȱ���˵���ǩ�յĻ��ڣ�������������ô��?
 ���й�֮����������߷塷������һ������ݴ�ǧ��֮�ⷢ��������û�˲����������ô��?���У���ͥסַ���������绰����Ϣ�����д�ڿ�ݵ��ϣ�����ڽ��տ��ʱ����������˽?����̽�÷��֣��ൺ�Ŀ�������չѸ�٣���ģ�ڽ��꽫����1��̨����Ҳ����������ɻ�ȱ���˵���ǩ�յĻ��ڣ�������������ô��?
 ���ൺ����·�ϵ�һ������С�����°�ؼҵ�������Ůʿ�����������ǰ��������Ž��յ�ȡ�����룬����һ���Ӿ�ȡ�����Լ��Ŀ�ݰ�����
 ','new6.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'��ͷת�����ٵ��̳�������','�Ž�����Ϊ�Ϻ�����ҵ����������ƹ�ҵ�򣬶������γɽ�����Ʒ���Ҿ����졢��װ��֯����װӡˢ���������ϵȴ�ͳ��ҵ���ۡ��Ž�ˮ�˺�����Դ�ḻ��·����ͨ���ҲΪ��ҵת���������������ơ�����һ����ɽ��Ӫ���ô�����߽��Ϻ����Ž��������ܡ��Ž��Ƴ�������ľҵ���صø��޷Ĳ�������߹ܵ�����̸�����߽��㶫���ܽ���ʵ�ص��С�
 �Ž�����Ϊ�Ϻ�����ҵ����������ƹ�ҵ�򣬶������γɽ�����Ʒ���Ҿ����졢��װ��֯����װӡˢ���������ϵȴ�ͳ��ҵ���ۡ��Ž�ˮ�˺�����Դ�ḻ��·����ͨ���ҲΪ��ҵת���������������ơ�����һ����ɽ��Ӫ���ô�����߽��Ϻ����Ž��������ܡ��Ž��Ƴ�������ľҵ���صø��޷Ĳ�������߹ܵ�����̸�����߽��㶫���ܽ���ʵ�ص��С� 
2015�꣬�Ž�ʵ�ֹ�ҵ�ܲ�ֵ260.43��Ԫ����ȥ��ͬ������3.43%���ڴ�ͳ��ҵ�����ϣ�ҽ��������������ҵ�����ҵת�Ͳ��������������һ���ȣ��Ž����̵Ǽǹ�10718����������ҵ3782������ҵ����ҵ��ҵ1962�������й�ģ���Ϲ�ҵ��ҵ200����
 ��������ת�����˳� 
','new7.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'�����ô�ۿڹ���','һ�������ô�ۿ�������չ���޹�˾����ʵʩ�Ľ����ô�ۿ�����԰һ�ڹ�����Ŀ���Ѿ��ϼ�������׼���裬�־����Ը���Ŀ����ʩ�����й����б꣬����ѡ������ʩ���а��ˡ� 

�������մ��޹�����Ŀ�������޹�˾���б���ί�о��帺�𱾹��̵��б����ˡ� 

������Ŀ�ſ� 

��1����Ŀ���ƣ� �����ô�ۿ�����԰һ�ڹ��� 

��2������Ҫ�� 180������ 

��3�������ģ�� ��Ͷ��Լ1655��Ԫ 

��4������Ҫ�� ��ع����������չ淶�ϸ��׼ 

��5���ʽ���Դ�� �Գ� 

�ġ�������Ӧ���߱�����Ҫ�ʸ�������Ҫ�� 

��1���������������͵ȼ���������н����������ܲ��ź˷��� �������ù���ʩ���ܳа�����������ʩ��������ȡ�ð�ȫ�������֤�Ķ���������ҵ�� 

��2����Ŀ�������ʺ�Ҫ�󣺱�����Ͷ���˱���λ��ʽְ�������н����������ܲ��ź˷��� �������ù����෡��ע�Ὠ��ʦ����֤�飬��ͬʱ���а�ȫ�������˺ϸ�֤��B�ࣩ��
','new8.jsp',sysdate);
insert into new(nid,ntitle,ncontent,nimage,ndate)values(new_seq.nextval,'���ܴ�������Ĵ����ݣ�','���̵㡿�����䡱�����ݹ۾ӼҴ�������·�չ 

1��������������ӼҴ���������ٷ�չ��2015�굥����������78%��������չ��Ӯ���̡� 

2�����������������������ߣ��������ϣ�2015���Ʒ�������ʽ�2014���д���½�;����Ʒ�ϣ�����Ҳ��������չ���ơ� 

3��ȫ����ä�����ǣ���������ķ�չ�����ݵ����ã�24Сʱ�������ظ���1567����ռ54%;72Сʱȫ����ä�����ǡ��� 

4���ʹ��ٶ��Ŵ��¸ߣ�������ʾ������˳��������2015��˫ʮһ��������׵�14�����ʹ�ļ�¼��ȫ��24Сʱ�ʹ����ط�Χ�ߴ�70%���ϡ� �� 

5���������´������¸ߵ㣺��Դ�����ϣ�����˳�������˽ϴ��Ͷ�룬��ִ�����ߴ�500��ƽ���ף������귢������4000��ƽ���ף��㵣���߷�������1500��ƽ���ס�
 
6�����֮����滹�ֱ��̵����û���˾���ġ����֮����û����棬����˳����������������ϡ�����������������(4500��)�ļ�¼;˾�����棬����˳�������ҵƽ̨�����ӳ�ֵص�������������Ļ����ԡ�
 ','new9.jsp',sysdate);
--===============================================================��============================================
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
