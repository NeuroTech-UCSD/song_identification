clear;
clc;

load('ImageryData.mat')

stim_p1_datavec=stim{1}{1}{1}; ind=1;
% for n= 1:length(stim{1}{1}{1})
%     if stim{1}{1}{1}(n)~=0
%         stim_p1_datavec(ind)=stim{1}{1}{1}(n);
%         ind=ind+1;
%     end
% end

resp_p1_datamat=eeg{1}{1}{1};

fs=64;



