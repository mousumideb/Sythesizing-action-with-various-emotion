function  skeletonplot(skeleton_input,action,emotion)
addpath functions
skeleton=skeleton_input;
[m,inputnumframe]= size(skeleton_input(5).Dxyz);
frametime= 1/120 ;%% sample freqency = 120 therefore, time = 1/120 =  0.0083
time = frametime*(0:inputnumframe-1);
fincr = 5;
name =  strcat (action, '_', emotion,'.avi');
write_video = true;
if write_video
    vidObj = VideoWriter(name);
    vidObj.FrameRate = 5;
    open(vidObj);
end
for ff = 1:fincr:length(time)
    h = figure(1); clf; hold on
%     title(sprintf('%1.2f seconds',time(ff)))
    set(h,'color','white','resize', 'off')
    for nn = 1:length(skeleton)
        plot3(skeleton(nn).Dxyz(1,ff),skeleton(nn).Dxyz(3,ff),skeleton(nn).Dxyz(2,ff),'.','markersize',20)
        parent = skeleton(nn).parent;
        if parent > 0
            plot3([skeleton(parent).Dxyz(1,ff) skeleton(nn).Dxyz(1,ff)],...
                [skeleton(parent).Dxyz(3,ff) skeleton(nn).Dxyz(3,ff)],...
                [skeleton(parent).Dxyz(2,ff) skeleton(nn).Dxyz(2,ff)])
        end
    end
    view(-30,30)
    axis equal off
    drawnow
    if write_video, writeVideo(vidObj,getframe(h));
    end
end
if write_video, close(vidObj); end
end