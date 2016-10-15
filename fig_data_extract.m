%% Extract data from MATLAB figure (.fig) file without originating code
% https://uk.mathworks.com/matlabcentral/answers/100687#answer_110036

open('...\example.fig');

h = gcf;                              %current figure handle

axesObjs = get(h, 'Children');        %axes handles
dataObjs = get(axesObjs, 'Children'); %handles to low-level graphics objects in axes
      
objTypes = get(dataObjs, 'Type');     %type of low-level graphics object


x = get(dataObjs, 'XData');           %data from low-level grahics objects
y = get(dataObjs, 'YData');
z = get(dataObjs, 'ZData');
