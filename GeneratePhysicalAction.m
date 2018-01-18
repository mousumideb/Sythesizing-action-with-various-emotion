function physicalAction =GeneratePhysicalAction(duration,action,emotion,age,gender)
pathname ='./data/';
inputemotion= 'Neutral' ;
patt= '/';
codeerror = false;
%%  Action  reading condition%%
if strcmpi(action ,'walking') |  strcmpi(action ,'Walking' ) | strcmpi(action ,'Walk' )
    actionp='Walking';
elseif strcmpi(action ,'Bathing') | strcmpi(action ,'bathing' )
    actionp='Bathing';
elseif strcmpi(action ,'Cooking') |  strcmpi(action ,'cooking' )
    actionp='Cooking';
elseif strcmpi(action ,'Sits') | strcmpi(action ,'Sit' ) | strcmpi(action ,'Sitting' ) | strcmpi(action ,'Watching Tv' ) | strcmpi(action ,'Sits, Talking,Watching TV' )
    actionp='Sitting';
elseif strcmpi(action ,'Sitting,Talking, Watching Tv' ) | strcmpi(action ,'Talking' ) |strcmpi(action ,'talking' )
    actionp='WatchingTV';
elseif strcmpi(action ,'Watching Tv' )
    actionp='Sitting';
elseif strcmpi(action ,'Dressing') || strcmpi(action ,'dressing' )
    actionp='Dressing';
elseif strcmpi(action ,'Running') || strcmpi(action ,'running' ) || strcmpi(action ,'run' )
    actionp='Running';
elseif strcmpi(action ,'Sleeping') || strcmpi(action ,'Lying' ) || strcmpi(action ,'sleeping' )
    actionp='Sleeping';
elseif strcmpi(action ,'Wakes, Freshen up' ) || strcmpi(action ,'Wakes' ) || strcmpi(action ,'Wakes,Freshen up' ) |  strcmpi(action ,'Freshen up' )
    actionp='Freshenup';
elseif strcmpi(action ,'Eating') || strcmpi(action ,'Eat') || strcmpi(action ,'eating' )
    actionp='Eating';
elseif strcmpi(action ,'Drinking') || strcmpi(action ,'drinking')
    actionp='Drinking';
elseif strcmpi(action ,'Standing')
    actionp='Standing';
elseif strcmpi(action ,'Reading') || strcmpi(action ,'reading')
    actionp='Reading';
elseif strcmpi(action ,'Kicking') || strcmpi(action ,'kicking')
    actionp='Kicking';
elseif strcmpi(action ,'Punch') || strcmpi(action ,'Punching') || strcmpi(action ,'punching' )
    actionp='Punch';
elseif strcmpi(action ,'Standing') || strcmpi(action ,'standing') || strcmpi(action ,'Stand' )
    actionp='Standing';
elseif strcmpi(action ,'Throwing')|| strcmpi(action ,'throwing')
    actionp='Throwing';
elseif strcmpi(action ,'Jumping')|| strcmpi(action ,'jumping') || strcmpi(action ,'Jump')| strcmpi(action ,'jump')
    actionp='Jumping'
elseif strcmpi(action ,'Pushing')|| strcmpi(action ,'pushing')|| strcmpi(action ,'push')
    actionp='Pushing';
elseif strcmpi(action ,'Punch')|| strcmpi(action ,'Punching')|| strcmpi(action ,'punching')| strcmpi(action ,'punch')
    actionp='Punch';
elseif strcmpi(action ,'Drinking')|| strcmpi(action ,'drinking')|| strcmpi(action ,'drinking')
    actionp='Drinking';
elseif strcmpi(action ,'Falling')
    actionp='Falling';
elseif strcmpi(action ,'Grabbing')
    actionp='Grabbing';
elseif strcmpi(action ,'Hitting')
    actionp='Hitting';
elseif strcmpi(action ,'Cutting') ||strcmpi(action ,'cutting')
    actionp='Cutting';
else
    msg = 'Wrong Action name :Please provide right Action name';
    error(msg)
    codeerror = true;
end
if codeerror  return
end


inputpath = fullfile(pathname, actionp,inputemotion,patt);

%%  Emotion reading condition%%
if strcmpi(emotion ,'neutral' )
    emotionpath='Neutral';
elseif strcmpi(emotion ,'Neutral' )
    emotionpath = 'Neutral';
elseif strcmpi(emotion ,'pleasant' )
    emotionpath = 'Neutral';
elseif strcmpi(emotion ,'Pleasant' )
    emotionpath = 'Neutral';
elseif strcmpi(emotion ,'angry' )
    emotionpath = 'Angry';
elseif strcmpi(emotion ,'Angry' )
    emotionpath = 'Angry';
elseif strcmpi(emotion ,'happy' )
    emotionpath = 'Happy';
elseif strcmpi(emotion ,'Happy' )
    emotionpath = 'Happy';
elseif strcmpi(emotion ,'sad' )
    emotionpath = 'Sad';
elseif strcmpi(emotion ,'Fear' )
    emotionpath = 'Fear';
elseif strcmpi(emotion ,'fear' )
    emotionpath = 'Fear';
else
    msg = 'Wrong Emotion :Please provide right emotion name';
    error(msg)
end
%% source and refernce path %%
if strcmpi(action ,'Eating' )
    sourcepahinitial= './data/Standing/';
    sourcepath=  fullfile(sourcepahinitial,emotionpath,patt);
    referencepath = './data/Standing/Neutral/';
elseif strcmpi(action ,'Drinking')
    sourcepahinitial= './data/Standing/';
    sourcepath=  fullfile(sourcepahinitial,emotionpath,patt);
    referencepath = './data/Standing/Neutral/';
elseif strcmpi(action ,'Throwing')
    sourcepahinitial= './data/Standing/';
    sourcepath=  fullfile(sourcepahinitial,emotionpath,patt);
    referencepath = './data/Standing/Neutral/';
    
elseif strcmpi(action ,'Dressing')
    sourcepahinitial= './data/Standing/';
    sourcepath=  fullfile(sourcepahinitial,emotionpath,patt);
    referencepath = './data/Standing/Neutral/';
    
elseif strcmpi(action ,'Sitting')
    sourcepahinitial= './data/Running/';
    sourcepath=  fullfile(sourcepahinitial,emotionpath,patt);
    referencepath = './data/Running/Neutral/';
elseif strcmpi(action ,'Running')| strcmpi(action ,'running' ) |strcmpi(action ,'run' )
    sourcepahinitial= './data/Walking/';
    %     emotionrun='Neutral';
    sourcepath=  fullfile(sourcepahinitial,emotionpath,patt);
    referencepath = './data/Walking/Neutral/';
elseif strcmpi(action ,'Cutting')
    sourcepahinitial= './data/Walking/';
    emotionrun='Neutral';
    sourcepath=  fullfile(sourcepahinitial,emotionpath,patt);
    referencepath = './data/Walking/Neutral/';
elseif strcmpi(action ,'Walking')
    sourcepahinitial= './data/running/';
    emotionrun='Neutral';
    sourcepath=  fullfile(sourcepahinitial,emotionpath,patt);
    referencepath = './data/running/Neutral/';
    
else
    emotionrun='Neutral';
    sourcepahinitial= './data/Walking/';
    sourcepath=  fullfile(sourcepahinitial,emotionrun,patt);
    referencepath = './data/Walking/Neutral/'   ;
end
%%
%% ---------------------------functions path ------------------------------------%%
%addpath functions

%%
inputbvh = dir([inputpath '*.bvh']);
sourcebvh= dir([sourcepath '*.bvh']);
referencebvh= dir([referencepath '*.bvh']);
numbvh = length(inputpath);
numbvh2 = length(sourcepath);

%%  ------------- input  -------------    f(t)%%

inputsig = [inputpath inputbvh(1).name];

%% -------------  Source----------------- f^s(t) %%
if strcmpi(action ,'Running' ) |strcmpi(action ,'run' )
    Sourcesig = [sourcepath sourcebvh(2).name];
    
    %% -------------- Reference -------------------- f^r(t) %%
    referencesig = [referencepath referencebvh(1).name];
else
    Sourcesig = [sourcepath sourcebvh(1).name];
    referencesig = [referencepath referencebvh(2).name];
end
%%
%%  ------------- input  -------------    f(t)%%
[skeleton_input,time_input] = loadbvh(inputsig);
[m,inputnumframe]= size(skeleton_input(1).Dxyz);

%% -------------  Source----------------- f^s(t) %%
[skeleton_source,time_source] = loadbvh(Sourcesig);
[m,sourcenumframe]= size(skeleton_source(2).Dxyz);

%% -------------- Reference -------------------- f^r(t) %%
[skeleton_reference,time_reference] = loadbvh(referencesig);
[m,referencenumframe]= size(skeleton_reference(1).Dxyz);

%% initialization %%
npts= 38;
fftpoint = 1024;
ndof = 3;
cocordinate=3;
frameRate = 25;

for dof=1:cocordinate
    for input = 1:inputnumframe
        inputxyz= skeleton_input(33).Dxyz(:,input);
        inputsignal(:,input)=inputxyz(2);
    end
    
end
[peaks,loc]= findpeaks(inputsignal);

%% clipping the video to extend to length of the video according to period
if strcmpi(action ,'Reading' )| strcmpi(action ,'reading' )
    startingpoint=loc(50);
    endpoint_o=loc(55);
    inputsignal(startingpoint:endpoint_o);
elseif strcmpi(action ,'Walking' ) | strcmpi(action ,'walking' )
    startingpoint=loc(9);
    endpoint_o=loc(end);
    inputsignal= inputsignal(loc(9):loc(end));
elseif strcmpi(action ,'Sitting' ) | strcmpi(action ,'sitting' ) | strcmpi(action ,'Sits, Talking,Watching TV' ) | strcmpi(action ,'Sitting,Talking, Watching Tv' )
    startingpoint=loc(9);
    endpoint_o=loc(13);
    inputsignal= inputsignal(loc(9):loc(13));
elseif strcmpi(action ,'Sleeping' ) | strcmpi(action ,'sleeping' ) | strcmpi(action ,'Lying' )
    startingpoint=loc(13);
    endpoint_o=loc(19);
    inputsignal= inputsignal(loc(13):loc(19));
elseif strcmpi(action ,'Eating' ) | strcmpi(action ,'eating' ) | strcmpi(action ,'Eat' ) | strcmpi(action ,'eat' )
    startingpoint=loc(13);
    endpoint_o=loc(19);
    inputsignal= inputsignal(loc(13):loc(19));
else
    [peaksm startingpoint]= max(findpeaks(inputsignal));
    startingpoint=loc(1);
    endpoint_o=loc(end);
    inputsignal= inputsignal(loc(1):loc(end));
end

%% cycle calculation %%
%% distance between the first peak to last peak of the periodic joint
initialframe= size(inputsignal,2);
durationinitial=(initialframe/5);
durationcurr= (durationinitial/5);
cycle= ceil(duration/durationcurr);
% calcuate the remaining time to add with the period at the end to complete
% the required duration
reminder = mod(duration,durationcurr);
%calculate the frame required to achieve the required reminder duration
frameRequired = reminder*frameRate;

for pts= 1:npts
    for dof=1:ndof
        %% style transferfunction function_main
        output =  function_main(pts,dof,skeleton_input,inputnumframe,skeleton_source,sourcenumframe,skeleton_reference,referencenumframe,fftpoint);
        signal= output(startingpoint:endpoint_o);
        signal_frac = output(startingpoint: startingpoint+frameRequired);
        signalpart = repmat(signal,1,cycle-1); %reapeat the cycle to the end to meet multiple of period length
        signalwhole  = [signalpart, signal_frac];  % then append the remaining required time data to the end
        for frame = 1 : size(signalwhole,2)
            skeleton_input(pts).Dxyz(dof,frame)= signalwhole(:,frame); %% initialiing final output to skeleton input
        end
    end
end

%% ---------------------------output------------------------------------%%
physicalAction=skeleton_input;
skeletonplot(skeleton_input,action,emotion)
%% ---------------------------output save------------------------------------%%
filename = sprintf('%s_%s.mat',action,emotion);
save(filename, 'physicalAction'); %% save output
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function output=  function_main(pts,dof,skeleton_input,inputnumframe,skeleton_source,sourcenumframe,skeleton_reference,referencenumframe,fftpoint)
%% ---------------------------functions path ------------------------------------%%
% addpath functions
if inputnumframe<fftpoint
    fftpoint= 1024;
else
    fftpoint= 102400;
end
for input = 1:inputnumframe
    inputxyz= skeleton_input(pts).Dxyz(:,input);
    inputsignal(:,input)=inputxyz(dof);
    
end
fft_DOF_inputsig= abs((fft(inputsignal,fftpoint)));
DOF_phs_inputsig= angle( (fft(inputsignal,fftpoint)) );
for source=1:sourcenumframe
    sourcexyz= skeleton_source(pts).Dxyz(:,source);
    source_signal(:,source)=sourcexyz(dof);
end

fft_DOF_sourcesig= abs((fft(source_signal,fftpoint)));
for reference=1:referencenumframe
    xyz_reference= skeleton_reference(pts).Dxyz(:,reference);
    reference_signal(:,reference)= xyz_reference(dof);
end

fft_DOF_referencesig= abs((fft(reference_signal,fftpoint)));

%%
sw= fft_DOF_inputsig/max(fft_DOF_inputsig);
%% Main method for style transfer%%
rprimew= (fft_DOF_inputsig+(fft_DOF_sourcesig-fft_DOF_referencesig));
min=rprimew - (fft_DOF_inputsig+(sw.*(fft_DOF_sourcesig-fft_DOF_referencesig)));
[DOF1xp1,DOF1yp1]= pol2cart(DOF_phs_inputsig,((fft_DOF_inputsig+(fft_DOF_sourcesig-fft_DOF_referencesig))));
DOF1Y_rec1 = complex(DOF1xp1,DOF1yp1);
output= real(ifft(DOF1Y_rec1));
output= output(1:inputnumframe);
end