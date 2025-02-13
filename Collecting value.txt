clear all
close all

result.Time=[];
result.Error=[];
result.Effort=[];
result.Vel=[];
result.participant =[];
result.delay=[];
result.count_invasion=[];
processed_files = {}; 

% Input number of participants
num = 20;

Files=dir(fullfile('C:\Users\USER\Desktop\046_simulink 모델\DoubleLaneChange','*.mat'))
cell =struct2cell(Files)
for i =1:length(cell)
    name(i) = cell(1,i);
    sname(i) = string(name(i));
    
    for j =1:num
        eval(strcat(strcat('value=contains(sname(i), "beta',num2str(j)),'_");'));
        if value && ~ismember(sname(i), processed_files)
            processed_files = [processed_files, sname(i)];
            if contains(sname(i),"100");
                result.delay = [result.delay; 100];
            elseif contains(sname(i),"200");
                result.delay = [result.delay; 200];
            elseif contains(sname(i),"300");
                result.delay = [result.delay; 300];
            elseif contains(sname(i),"400");
                result.delay = [result.delay; 400];
            elseif contains(sname(i),"500");
                result.delay = [result.delay; 500];
            elseif contains(sname(i),"900");
                result.delay = [result.delay; 900];
            else
                result.delay = [result.delay; 0];
            end
            load(sname(i))
            vel = [];
            Vehicle.xvel=out.logsout{5}.Values.BdyFrm.Geom.Vel.xdot.Data;
            Vehicle.yvel=out.logsout{5}.Values.BdyFrm.Geom.Vel.ydot.Data;
            vel = mean(sqrt(Vehicle.xvel.^2 + Vehicle.yvel.^2));
            result.Time=[result.Time; Time.elapsed];
            result.Vel=[result.Vel; vel];
            result.Error=[result.Error; mean(Error.center)];
            result.Effort=[result.Effort; Effort];
            result.participant = [result.participant; j];
            result.count_invasion = [result.count_invasion; count_invasion];
        end
    end
    
end


