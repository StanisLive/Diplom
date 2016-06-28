function varargout = diplom(varargin)
% DIPLOM MATLAB code for diplom.fig
%      DIPLOM, by itself, creates a new DIPLOM or raises the existing
%      singleton*.
%
%      H = DIPLOM returns the handle to a new DIPLOM or the handle to
%      the existing singleton*.
%
%      DIPLOM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIPLOM.M with the given input arguments.
%
%      DIPLOM('Property','Value',...) creates a new DIPLOM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before diplom_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to diplom_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help diplom

% Last Modified by GUIDE v2.5 11-Jun-2016 19:10:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @diplom_OpeningFcn, ...
                   'gui_OutputFcn',  @diplom_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before diplom is made visible.
function diplom_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to diplom (see VARARGIN)

% Choose default command line output for diplom
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes diplom wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = diplom_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
handles = guidata(hObject);
[FileNameD, PathNameD] = uigetfile('*.txt','Выберите данные для обучения');
set(handles.edit1, 'String', strcat(PathNameD,FileNameD));
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
handles = guidata(hObject);
[FileNameT, PathNameT] = uigetfile('*.txt','Выберите файл с результатами');
set(handles.edit2, 'String', strcat(PathNameT,FileNameT));
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
if (get(hObject,'Value') == get(hObject,'Max'))
	display('Selected');
else
	display('Not selected');
end
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
handles = guidata(hObject);
d = get(handles.edit1, 'String');
t = get(handles.edit2, 'String');
l = str2double(get(handles.edit4, 'String'));
if (get(handles.checkbox1,'Value') == get(handles.checkbox1,'Max'))
	ch1 = 1;
else
	ch1 = 0;
end
if (get(handles.checkbox2,'Value') == get(handles.checkbox2,'Max'))
	ch2 = 1;
else
	ch2 = 0;
end
if (get(handles.checkbox3,'Value') == get(handles.checkbox3,'Max'))
	ch3 = 1;
else
	ch3 = 0;
end

treining(d,t,l,ch1,ch2,ch3);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
handles = guidata(hObject);
[FileNameTest, PathNameTest] = uigetfile('*.txt','Выберите данные для тестирования');
[FileNameTestRez, PathNameTestRez] = uigetfile('*.txt','Выберите файл с результатами');
f1 = strcat(PathNameTest,FileNameTest);
f2 = strcat(PathNameTestRez,FileNameTestRez);
if (get(handles.checkbox2,'Value') == get(handles.checkbox2,'Max'))
	ch4 = 1;
else
	ch4 = 0;
end
if (get(handles.checkbox3,'Value') == get(handles.checkbox3,'Max'))
	ch5 = 1;
else
	ch5 = 0;
end
testing(f1,f2,ch4,ch5);
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function treining(file1,file2,leyers,ch1,ch2,ch3)
% Solve a Pattern Recognition Problem with a Neural Network
% Script generated by NPRTOOL
% Created Fri Jun 10 19:00:07 EEST 2016
%
% This script assumes these variables are defined:
%
%   d - input data.
%   t - target data.
%[FileName, PathName] = uigetfile('*.txt','Выбирете данные');
d = load(file1);
t = load(file2);
inputs = d';
targets = t';

% Create a Pattern Recognition Network
hiddenLayerSize = leyers;
global net;
net = patternnet(hiddenLayerSize);

% Choose Input and Output Pre/Post-Processing Functions
% For a list of all processing functions type: help nnprocess
net.inputs{1}.processFcns = {'removeconstantrows','mapminmax'};
net.outputs{2}.processFcns = {'removeconstantrows','mapminmax'};


% Setup Division of Data for Training, Validation, Testing
% For a list of all data division functions type: help nndivide
net.divideFcn = 'dividerand';  % Divide data randomly
net.divideMode = 'sample';  % Divide up every sample
net.divideParam.trainRatio = 75/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 10/100;

% For help on training function 'trainlm' type: help trainlm
% For a list of all training functions type: help nntrain
net.trainFcn = 'trainlm';  % Levenberg-Marquardt

% Choose a Performance Function
% For a list of all performance functions type: help nnperformance
net.performFcn = 'mse';  % Mean squared error

% Choose Plot Functions
% For a list of all plot functions type: help nnplot
net.plotFcns = {'plotperform','plottrainstate','ploterrhist', ...
  'plotregression', 'plotfit', 'plotconfusion'};


% Train the Network
[net,tr] = train(net,inputs,targets);

% Test the Network
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs);

% Recalculate Training, Validation and Test Performance
%trainTargets = targets .* tr.trainMask{1};
%valTargets = targets  .* tr.valMask{1};
%testTargets = targets  .* tr.testMask{1};
%trainPerformance = perform(net,trainTargets,outputs)
%valPerformance = perform(net,valTargets,outputs)
%testPerformance = perform(net,testTargets,outputs)

% View the Network
view(net)


% Plots
% Uncomment these lines to enable various plots.
if ch1 == 1
figure, plotperform(tr)
end
%figure, plottrainstate(tr)
if ch2 == 1
figure, plotconfusion(targets,outputs)
end
if ch3 == 1
figure, ploterrhist(errors)
end

pause(10);

[FileNameTest, PathNameTest] = uigetfile('*.txt','Выберите данные для тестирования');
[FileNameTestRez, PathNameTestRez] = uigetfile('*.txt','Выберите файл с результатами');
file1 = strcat(PathNameTest,FileNameTest);
file2 = strcat(PathNameTestRez,FileNameTestRez);

f1 = load(file1);
f2 = load(file2);
inputs = f1';
targets = f2';

% Test the Network
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs);


%figure, plottrainstate(tr)
if ch2 == 1
figure, plotconfusion(targets,outputs)
end
if ch3 == 1
figure, ploterrhist(errors)
end

pause(20);

[FileS, PathS] = uigetfile('*.txt','Выберите файл для сохранения результатов');
[Files, Paths] = uigetfile('*.txt','Выберите файл для сохранения статистики ошибок');
fileS = strcat(PathS,FileS);
files = strcat(Paths,Files);   
fid1 = fopen(fileS,'wt');
[m1,n1] = size(outputs);    
rid = 0;
for i=1:n1
    for k=1:m1
        rid = rid+1;
fprintf(fid1,'%5.6f ',outputs(rid));
    end
    fprintf(fid1,'\n');
end
fclose(fid1);
fid2 = fopen(files,'wt');
[m2,n2] = size(errors);
rid = 0;
for i=1:n2
    for k=1:m2
        rid = rid+1;
fprintf(fid2,'%5.6f ',errors(rid));
    end
    fprintf(fid2,'\n');
end
fclose(fid2);

M = outputs';
M(M>0.5) = 1;
M(M<0.5) = 0;
[m,n] = size(M);
	figure('Name','Результати');
	axes('XLim', [0 n+1], 'YLim', [0 m+1],...
	    'XTick', 1:n, 'YTick', 1:m,...
	    'YDir', 'reverse', 'XAxisLocation', 'top');
    xlabel('Клас умов праці')
ylabel('Номер підприємства')
	hT = zeros(m, n);
	for j=1:n
	    C = M(:, j);
	    hT(:, j) = text(j*ones(1, m), 1:m, num2str(C),...
	        'HorizontalAlignment', 'center', 'FontSize', 20);
    end
    set(hT(M>0.5), 'Color', 'g');

function testing(file1,file2,ch2,ch3)

d = load(file1);
t = load(file2);
load net1.mat net
inputs = d';
targets = t';

net.inputs{1}.processFcns = {'removeconstantrows','mapminmax'};
net.outputs{2}.processFcns = {'removeconstantrows','mapminmax'};

outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs);

view(net)

if ch2 == 1
figure, plotconfusion(targets,outputs)
end
if ch3 == 1
figure, ploterrhist(errors)
end
