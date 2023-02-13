clc
clear
%% Load satellite data 
sst_full=NaN(402,352,datenum(2019,12,31)-datenum(2016,1,1)+1);  %% spatial range: Tasmania; temporal range: 2016-2019
for i=2016:2019;
    file_here=['D:\Honours\SST0.01\' num2str(i) '.nc'];   %% data path
    sst=ncread(file_here,'analysed_sst')-273;
    ssttime=ncread(file_here,'time'); 
    time((datenum(i,1,1):datenum(i,12,31))-datenum(2016,1,1)+1,1)=ssttime;
    sst_full(:,:,(datenum(i,1,1):datenum(i,12,31))-datenum(2016,1,1)+1)=sst;
end
t=datetime(1981,1,1, 'Format' , 'dd-MMM-yyyy HH:mm:ss') + seconds(time); 
tt=datetime(year(t),month(t),day(t));
% %% study period (summer time in 2016-2019)
t1_start = datetime(2016,11,1); t1_end = datetime(2017,4,30);
t2_start = datetime(2017,11,1); t2_end = datetime(2018,4,30);
t3_start = datetime(2018,11,1); t3_end = datetime(2019,4,30);
indt1_start = find(tt==t1_start); indt1_end = find(tt==t1_end);
indt2_start = find(tt==t2_start); indt2_end = find(tt==t2_end);
indt3_start = find(tt==t3_start); indt3_end = find(tt==t3_end);

time_summer = [t1_start:t1_end,t2_start:t2_end,t3_start:t3_end]';
time_summer = yyyymmdd(time_summer);
%% summer time sst
sst_summer = sst_full(:,:,[indt1_start:indt1_end, indt2_start:indt2_end, indt3_start:indt3_end]);

%% select sst in PC/UPW/LPW range
% % first need to find the lats and lons of 10*10 grid points
% % then take spatial average 
sstPWup= nanmean(sst_summer(296:305,118:127,:),[1 2]);
sstPWlow= nanmean(sst_summer(302:311,115:124,:),[1 2]);
sstPC = nanmean(sst_summer(301:310,101:110,:),[1 2]);  

% %change the data dimension
UPWsst=zeros(length(sstPWup),1);
for i = 1:length(UPWsst)
UPWsst(i)=sstPWup(i);
end
LPWsst=zeros(length(sstPWlow),1);
for i = 1:length(LPWsst)
LPWsst(i)=sstPWlow(i);
end
PCsst=zeros(length(sstPC),1);
for i = 1:length(PCsst)
PCsst(i)=sstPC(i);
end
%% export into csv
pc = [time_summer,PCsst];
upw = [time_summer,UPWsst];
lpw = [time_summer,LPWsst];

csvwrite('PCsatelliteSST.csv',pc)
csvwrite('UPWsatelliteSST.csv',upw)
csvwrite('LPWsatelliteSST.csv',lpw)
