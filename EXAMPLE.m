%% Copyright (c) 2021 Tamas Kis

% Example for using the shrink_data_set function.



%% SCRIPT SETUP

% clears variables and command window, closes all figures
clear;
clc;
close all;



%% EXAMPLE

% defines data set
x = 0:0.01:10;
y = x+sin(x);

% compiles data set into matrix
X = [x;y];

% shrinks data set to have only 5 points
X_shrunk = shrink_data_set(X,5,'rows');

% extracts x_shrunk and y_shrunk from X_shrunk
x_shrunk = X_shrunk(1,:);
y_shrunk = X_shrunk(2,:);

% creates a plot
figure;
hold on;
plot(x,y,'k:','linewidth',1.5);
plot(x_shrunk,y_shrunk,'color','k','linewidth',1.5);
plot(x_shrunk,y_shrunk,'o','linewidth',1.5,'markersize',7,'color','k',...
    'handlevisibility','off');
hold off;
xlabel('$x$','interpreter','latex','fontsize',18);
ylabel('$y$','interpreter','latex','fontsize',18);
legend('original data set','shrunk data set','interpreter','latex',...
    'fontsize',14,'location','best');