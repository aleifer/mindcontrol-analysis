function [short long t]= aggregateReversals(directory)

files=ls([directory '\*.mat']);

for k=1:size(files,1)
    
    disp(files(k,:));
    load( [directory '\'  files(k,:)],'-mat')
    time=handles.sElapsed_data+(10^-3)*handles.msRemElapsed_data;
    [short(k) long(k)]=computeReversalResponse(phaseVelocity,time,T2-T1,T3-T1,[])
    t(k)=time(T2);
    clear('T1','T2','T3','T4')
    
end


figure;plot(t-t(1),short,'o');title('Short-Term Acceleration')
figure;plot(t-t(1),long,'o');title('Long-Term Acceleration');