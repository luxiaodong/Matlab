function [] = drawCity()
%DRAWCITY Summary of this function goes here
%   Detailed explanation goes here

cityPosition = load('data/world/data_city.txt');

%id = cityPosition(:,1);
X = cityPosition(:,2);
Y = cityPosition(:,3);
plot(X, Y, 'r*');
axis([0 6000 0 3600]);
hold on;
end

