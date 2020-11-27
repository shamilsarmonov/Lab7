planarrobot_student
home = [45 45 0 45 -45]*deg;
planar_robot.plot(home)
pose_end = planar_robot.fkine(home);
hold on
%real
xyz = transl(pose_end)
scatter3(xyz(1),xyz(2),xyz(3),100)

% predicted
load net
sample = ones(1,1,5);
sample(1,1,:) = home;
xyz2 = predict(net, sample)
hold on
scatter3(xyz2(1),xyz2(2),xyz2(3),'*')