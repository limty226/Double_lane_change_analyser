clear all
close all


centerx_ref = [];
centery_ref = [];
centerx_ref = [centerx_ref 0]; centery_ref = [centery_ref 0];
centerx_ref = [centerx_ref 0]; centery_ref = [centery_ref 12];
centerx_ref = [centerx_ref -4.5]; centery_ref = [centery_ref 25.5];
centerx_ref = [centerx_ref -4.5]; centery_ref = [centery_ref 36.5];
centerx_ref = [centerx_ref 0]; centery_ref = [centery_ref 49];
centerx_ref = [centerx_ref 0]; centery_ref = [centery_ref 174.5];
[centerx_ref]=interp1(centery_ref,centerx_ref,[0:0.03:174.5]);
[centery_ref]=interp1(centery_ref,centery_ref,[0:0.03:174.5]);
centery_ref = 174.5 - centery_ref;




conelx_ref = [];
conely_ref = [];
conelx_ref = [conelx_ref -1.5]; conely_ref = [conely_ref 4];
conelx_ref = [conelx_ref -1.5]; conely_ref = [conely_ref 6];
conelx_ref = [conelx_ref -1.5]; conely_ref = [conely_ref 8];
conelx_ref = [conelx_ref -1.5]; conely_ref = [conely_ref 10];
conelx_ref = [conelx_ref -1.5]; conely_ref = [conely_ref 12];
conelx_ref = [conelx_ref -4.5-1.25]; conely_ref = [conely_ref 26];
conelx_ref = [conelx_ref -4.5-1.25]; conely_ref = [conely_ref 28];
conelx_ref = [conelx_ref -4.5-1.25]; conely_ref = [conely_ref 30];
conelx_ref = [conelx_ref -4.5-1.25]; conely_ref = [conely_ref 32];
conelx_ref = [conelx_ref -4.5-1.25]; conely_ref = [conely_ref 34];
conelx_ref = [conelx_ref -1.5]; conely_ref = [conely_ref 49];
conelx_ref = [conelx_ref -1.5]; conely_ref = [conely_ref 51];
conelx_ref = [conelx_ref -1.5]; conely_ref = [conely_ref 53];
conelx_ref = [conelx_ref -1.5]; conely_ref = [conely_ref 55];
conelx_ref = [conelx_ref -1.5]; conely_ref = [conely_ref 57];
conely_ref = 174.5 - conely_ref;

conerx_ref = [];
conery_ref = [];
conerx_ref = [conerx_ref +1.5]; conery_ref = [conery_ref 4];
conerx_ref = [conerx_ref +1.5]; conery_ref = [conery_ref 6];
conerx_ref = [conerx_ref +1.5]; conery_ref = [conery_ref 8];
conerx_ref = [conerx_ref +1.5]; conery_ref = [conery_ref 10];
conerx_ref = [conerx_ref +1.5]; conery_ref = [conery_ref 12];
conerx_ref = [conerx_ref -4.5+1.25]; conery_ref = [conery_ref 26];
conerx_ref = [conerx_ref -4.5+1.25]; conery_ref = [conery_ref 28];
conerx_ref = [conerx_ref -4.5+1.25]; conery_ref = [conery_ref 30];
conerx_ref = [conerx_ref -4.5+1.25]; conery_ref = [conery_ref 32];
conerx_ref = [conerx_ref -4.5+1.25]; conery_ref = [conery_ref 34];
conerx_ref = [conerx_ref +1.5]; conery_ref = [conery_ref 49];
conerx_ref = [conerx_ref +1.5]; conery_ref = [conery_ref 51];
conerx_ref = [conerx_ref +1.5]; conery_ref = [conery_ref 53];
conerx_ref = [conerx_ref +1.5]; conery_ref = [conery_ref 55];
conerx_ref = [conerx_ref +1.5]; conery_ref = [conery_ref 57];
conery_ref = 174.5 - conery_ref;

cones = [
    struct('number', 1, 'x', -1.5, 'y', 4),
    struct('number', 2, 'x', -1.5, 'y', 6),
    struct('number', 3, 'x', -1.5, 'y', 8),
    struct('number', 4, 'x', -1.5, 'y', 10),
    struct('number', 5, 'x', -1.5, 'y', 12),
    struct('number', 6, 'x', -4.5-1.25, 'y', 26),
    struct('number', 7, 'x', -4.5-1.25, 'y', 28),
    struct('number', 8, 'x', -4.5-1.25, 'y', 30),
    struct('number', 9, 'x', -4.5-1.25, 'y', 32),
    struct('number', 10, 'x', -4.5-1.25, 'y', 34),
    struct('number', 11, 'x', -1.5, 'y', 49),
    struct('number', 12, 'x', -1.5, 'y', 51),
    struct('number', 13, 'x', -1.5, 'y', 53),
    struct('number', 14, 'x', -1.5, 'y', 55),
    struct('number', 15, 'x', -1.5, 'y', 57),
    struct('number', 16, 'x', +1.5, 'y', 4),
    struct('number', 17, 'x', +1.5, 'y', 6),
    struct('number', 18, 'x', +1.5, 'y', 8),
    struct('number', 19, 'x', +1.5, 'y', 10),
    struct('number', 20, 'x', +1.5, 'y', 12),
    struct('number', 21, 'x', -4.5+1.25, 'y', 26),
    struct('number', 22, 'x', -4.5+1.25, 'y', 28),
    struct('number', 23, 'x', -4.5+1.25, 'y', 30),
    struct('number', 24, 'x', -4.5+1.25, 'y', 32),
    struct('number', 25, 'x', -4.5+1.25, 'y', 34),
    struct('number', 26, 'x', +1.5, 'y', 49),
    struct('number', 27, 'x', +1.5, 'y', 51),
    struct('number', 28, 'x', +1.5, 'y', 53),
    struct('number', 29, 'x', +1.5, 'y', 55),
    struct('number', 30, 'x', +1.5, 'y', 57),
    ];

cones_ref = cones; % 복사
for i = 1:length(cones_ref)
    cones_ref(i).y = 174.5 - cones_ref(i).y; % y 좌표 변환
end


figure
clf
hold on
scatter(centerx_ref,centery_ref);
scatter(conelx_ref,conely_ref, 'ro');
scatter(conerx_ref,conery_ref, 'ro');
plot(centerx_ref,centery_ref);
hold off
grid on
xlabel('x-axis distance (m)');ylabel('y-axis distance (m)')
legend('Center Line Samples','Cones')
set(gca,'FontName','Times new roman','FontSize',13)
xlim([-10 10])
ylim([110 180])

Vehicle.x=out.logsout{5}.Values.InertFrm.Geom.Disp.X.Data-63.5;
Vehicle.y=out.logsout{5}.Values.InertFrm.Geom.Disp.Y.Data-3.5;
Vehicle.Fwlx=out.logsout{5}.Values.InertFrm.FrntAxl.Lft.Disp.X.Data-63.5;
Vehicle.Fwly=out.logsout{5}.Values.InertFrm.FrntAxl.Lft.Disp.Y.Data-3.5;
Vehicle.Fwrx=out.logsout{5}.Values.InertFrm.FrntAxl.Rght.Disp.X.Data-63.5;
Vehicle.Fwry=out.logsout{5}.Values.InertFrm.FrntAxl.Rght.Disp.Y.Data-3.5;
Vehicle.ang =out.logsout{5}.Values.InertFrm.Cg.Ang.psi.Data;
Vehicle.xvel=out.logsout{5}.Values.BdyFrm.Geom.Vel.xdot.Data;
Vehicle.yvel=out.logsout{5}.Values.BdyFrm.Geom.Vel.ydot.Data;

for i =2:length(Vehicle.xvel)
    Vehicle.xvel(i) = Vehicle.xvel(i) - Vehicle.xvel(i-1);
    Vehicle.yvel(i) = Vehicle.yvel(i) - Vehicle.yvel(i-1);
    Vehicle.velocity(i) = sqrt(Vehicle.xvel(i).^2 + Vehicle.yvel(i).^2);
end

for i =2:length(Vehicle.ang)
    Vehicle.diffang(i) = abs(Vehicle.ang(i) - Vehicle.ang(i-1));
end

figure
clf
hold on
plot(centerx_ref,centery_ref,':');
scatter(conelx_ref,conely_ref, 'ro');
plot(Vehicle.y,Vehicle.x);
plot(Vehicle.Fwly,Vehicle.Fwlx);
plot(Vehicle.Fwry,Vehicle.Fwrx);

%scatter(centerx_ref,centery_ref);
scatter(conerx_ref,conery_ref, 'ro');

hold off
grid on
xlabel('x-axis distance (m)');ylabel('y-axis distance (m)')
legend('Center Line reference','Cones','Center of Car','Left wheel of the car','Right wheel of the car')
set(gca,'FontName','Times new roman','FontSize',13,'TickDir','Out')
xlim([-15 5])
ylim([110 180])
view([90 90])

Error.center =[];
Error.name = [];
Time.counter = 0;
Time.elapsed = 0;
conerxcnt = 0;
Effort=0;
Velocity=0;
for i = 1:length(Vehicle.x)
    if (Vehicle.x(i) > 110) && (Vehicle.x(i) < 175)
        Time.counter = Time.counter +1;
        Time.elapsed = Time.counter*0.03;
        Effort=Effort + Vehicle.diffang(i)*180/pi;
        for j=1:length(centerx_ref)
            Carray.x(j) = Vehicle.y(i)-centerx_ref(j);
            Carray.y(j) = Vehicle.x(i)-centery_ref(j);
            Carray.all(j) = sqrt(Carray.x(j).^2+Carray.y(j).^2);
        end
        [minValue,cIndex] = min(Carray.all);
        
        for j=1:length(conerx_ref)
            Carray.x(j) = Vehicle.y(i)-conerx_ref(j);
            Carray.y(j) = Vehicle.x(i)-conery_ref(j);
            Carray.all(j) = sqrt(Carray.x(j).^2+Carray.y(j).^2);
        end
        [minValueconerx,cIndexconerx] = min(Carray.all);
        
        if minValue < threshold
            Error.center = [Error.center minValue];
            Error.name = [Error.name {'Name'}];
        end
        
        if minValueconerx < threshold
            conerxcnt = conerxcnt + 1;
            
            Error.center= [Error.center minValue];
            Error.name = [Error.name {'Name'}];
        end
    end
end
    histogram(Error.center,30)
    xlabel('RMSE (m)');ylabel('Number of samples')
    set(gca,'FontName','Times new roman','FontSize',13,'TickDir','Out')
    grid on
    box off
    legend('Samples of error')
    mean(Error.center)
    std(Error.center)

SAVE
 
path = "DoubleLaneChange";
date = "20230522";
file = "participant1";
trial = 1;
 filename = strcat(path, strcat('/', strcat(date, strcat(file, strcat('_', num2str(trial))))));
    save(filename, 'Time', 'Error', 'Effort', 'Velocity', 'conerxcnt');

