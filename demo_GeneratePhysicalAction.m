%%
clc
clear all
close all
%%



duration=7;  %% duration in second
action = 'Walking';
emotion = 'Neutral';
age ='60';
gender ='Female';
physicalAction = GeneratePhysicalAction(duration,action,emotion,age,gender);

% clc
% clear all
% actions = {'Walking', 'Running','Standing', 'Punching', 'Kicking','Jumping','Throwing','Grabbing','Hitting','Sitting','Lying','Eating','Dressing','Drinking','Falling','Cutting','Talking','Pushing'};
% emotions = {'Neutral','Happy','Sad','Angry','Fear'};
% age =65;
% gender ='Female';
% duration = 2;
% for i = 1 : length(actions) 
%     for j = 1 : length(emotions) 
%         action = actions(i);
%         emotion = emotions(j); 
%         disp(strcat('Generating result for: (',action, ',', emotion,')'));
%         physicalAction = GeneratePhysicalAction(duration,char(action),char(emotion),age,gender);      
%     end
% end
