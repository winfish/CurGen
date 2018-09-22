function varargout = CurveGenerate(varargin)
% CURVEGENERATE MATLAB code for CurveGenerate.fig
%      CURVEGENERATE, by itself, creates a new CURVEGENERATE or raises the existing
%      singleton*.
%
%      H = CURVEGENERATE returns the handle to a new CURVEGENERATE or the handle to
%      the existing singleton*.
%
%      CURVEGENERATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CURVEGENERATE.M with the given input arguments.
%
%      CURVEGENERATE('Property','Value',...) creates a new CURVEGENERATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CurveGenerate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CurveGenerate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CurveGenerate

% Last Modified by GUIDE v2.5 22-Sep-2018 09:45:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CurveGenerate_OpeningFcn, ...
                   'gui_OutputFcn',  @CurveGenerate_OutputFcn, ...
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




% --- Executes just before CurveGenerate is made visible.
function CurveGenerate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CurveGenerate (see VARARGIN)

% Choose default command line output for CurveGenerate
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

xlim([0 str2num(get(handles.e_Xmax,'String'))]);
ylim([0 str2num(get(handles.e_Ymax,'String'))]);

% UIWAIT makes CurveGenerate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CurveGenerate_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes_main_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_main (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_main
xlabel('X');
ylabel('Y');
grid on;
%set(gcf, 'WindowButtonMotionFcn', @mouseMove);



%title(gca, ['(X,Y) = (', num2str(C(1,1)), ', ',num2str(C(1,2)), ')']);

function e_X_Callback(hObject, eventdata, handles)
% hObject    handle to e_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e_X as text
%        str2double(get(hObject,'String')) returns contents of e_X as a double


% --- Executes during object creation, after setting all properties.
function e_X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e_Y_Callback(hObject, eventdata, handles)
% hObject    handle to e_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e_Y as text
%        str2double(get(hObject,'String')) returns contents of e_Y as a double


% --- Executes during object creation, after setting all properties.
function e_Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pop_F.
function pop_F_Callback(hObject, eventdata, handles)
% hObject    handle to pop_F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pop_F contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pop_F


% --- Executes during object creation, after setting all properties.
function pop_F_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pop_F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_PEN.
function pb_PEN_Callback(hObject, eventdata, handles)
% hObject    handle to pb_PEN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.pen_drawing = 1;
handles.lineIndex = 1;
handles.poinTable = [];
guidata(hObject,handles);

axes(handles.axes_main)
hold on;
% set(gcf,'pointer','watch');
iptPointerManager(gcf, 'enable');
iptSetPointerBehavior(handles.figure1, @(hFigure, currentPoint)set(hFigure, 'Pointer', 'watch'));
iptSetPointerBehavior(handles.axes_main, @(hFigure, currentPoint)set(hFigure, 'Pointer', 'cross'));
while handles.pen_drawing == 1
    C = get(gca, 'CurrentPoint');
    curX = C(1,1);
    curY = C(1,2);
    x_lim = xlim;
    y_lim = ylim;
    if curX < x_lim(2) && curX > x_lim(1) && curY > y_lim(1) && curY < y_lim(2)
        if abs(curX-0.5*round(curX/0.5))<0.03
            curX = 0.5*round(curX/0.5);
        end
        if abs(curY-0.5*round(curY/0.5))<0.03
            curY = 0.5*round(curY/0.5);
        end
        set(handles.e_X,'String',num2str(curX,'%.2f'));
        set(handles.e_Y,'String',num2str(curY,'%.2f'));
    end
%     try
%         delete(handles.preLine);
%     catch
%     end
    try
        handles = guidata(hObject);
        preX = handles.preX;
        preY = handles.preY;
    catch
        preX = 0;
        preY = 0;
    end
    %handles.preLine = plot([preX curX],[preY curY],'r-','LineWidth',1.5);
    drawnow;
    pause(0.2)
    handles = guidata(hObject);
end

% set(gca,'pointer','cross');
iptSetPointerBehavior(handles.axes_main, @(hFigure, currentPoint)set(hFigure, 'Pointer', 'arrow'));
iptSetPointerBehavior(handles.figure1, @(hFigure, currentPoint)set(hFigure, 'Pointer', 'arrow'));


% --- Executes during object creation, after setting all properties.
function table_XY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to table_XY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Data',[]);


% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% C = get (gca, 'CurrentPoint');
% set(handles.e_X,'String',num2str(C(1,1),'%.2f'));
% set(handles.e_Y,'String',num2str(C(1,2),'%.2f'));


% --- Executes on button press in pb_pick.
function pb_pick_Callback(hObject, eventdata, handles)
% hObject    handle to pb_pick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over axes background.
function axes_main_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes_main (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
try
    pen_drawing = handles.pen_drawing;
catch
    pen_drawing = 0;
end
type = get(gcf,'SelectionType');

if pen_drawing == 1
    if strcmp(type,'normal')
        axes(handles.axes_main);hold on;
        %C = get (gca, 'CurrentPoint');
        X = str2num(get(handles.e_X,'String'));
        Y = str2num(get(handles.e_Y,'String'));
        
        try
            preX = handles.preX;
            preY = handles.preY;
        catch
            preX = 0;
            preY = 0;
        end
        if X >= preX
            handles.Lines(handles.lineIndex,1) = plot([preX X],[preY Y],'r-','LineWidth',1.5);
            handles.Points(handles.lineIndex,1) = plot(X,Y,'.r','MarkerSize',15);            
            handles.preX = X;
            handles.preY = Y;
            handles.pointTable{handles.lineIndex,1} = X;
            handles.pointTable{handles.lineIndex,2} = Y;
            handles.pointTable{handles.lineIndex,3} = 'Linear';
            handles.lineIndex = handles.lineIndex + 1;
            set(handles.table_XY,'Data',handles.pointTable);
        end
        guidata(hObject,handles);
    elseif strcmp(type,'alt') % right click
        handles.pen_drawing = 0;
        guidata(hObject,handles);
    end
end



function e_Ymax_Callback(hObject, eventdata, handles)
% hObject    handle to e_Ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e_Ymax as text
%        str2double(get(hObject,'String')) returns contents of e_Ymax as a double


% --- Executes during object creation, after setting all properties.
function e_Ymax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e_Ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e_Xmax_Callback(hObject, eventdata, handles)
% hObject    handle to e_Xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e_Xmax as text
%        str2double(get(hObject,'String')) returns contents of e_Xmax as a double


% --- Executes during object creation, after setting all properties.
function e_Xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e_Xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected cell(s) is changed in table_XY.
function table_XY_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to table_XY (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
try
    delete(handles.curSel);
catch
end
row = eventdata.Indices(1);
axes(handles.axes_main);
if row ==1
    starX = 0;starY = 0;
else
    starX = handles.pointTable{row-1,1};
    starY = handles.pointTable{row-1,2};
end
endX = handles.pointTable{row,1};
endY = handles.pointTable{row,2};
handles.curSel = plot([starX endX],[starY endY],'-b','LineWidth',1.5);
guidata(hObject,handles);

