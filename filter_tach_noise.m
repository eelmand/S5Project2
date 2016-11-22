% Filter data from open-loop step response

lpFilt = designfilt('lowpassfir','PassbandFrequency',0.001, ...
         'StopbandFrequency',0.004,'PassbandRipple',0.5, ...
         'StopbandAttenuation',65,'DesignMethod','kaiserwin');
     
data_filt = filtfilt(lpFilt, data);

data_filt_rpm = data_filt/14*1000;
data_filt_rads = data_filt_rpm * 0.104719755;

time = time + 0.00656;