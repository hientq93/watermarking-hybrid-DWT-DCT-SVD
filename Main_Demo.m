function varargout = Main_Demo(varargin)
% MAIN_DEMO MATLAB code for Main_Demo.fig
%      MAIN_DEMO, by itself, creates a new MAIN_DEMO or raises the existing
%      singleton*.
%
%      H = MAIN_DEMO returns the handle to a new MAIN_DEMO or the handle to
%      the existing singleton*.
%
%      MAIN_DEMO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_DEMO.M with the given input arguments.
%
%      MAIN_DEMO('Property','Value',...) creates a new MAIN_DEMO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Main_Demo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Main_Demo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Main_Demo

% Last Modified by GUIDE v2.5 29-Feb-2016 00:12:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Main_Demo_OpeningFcn, ...
                   'gui_OutputFcn',  @Main_Demo_OutputFcn, ...
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


% --- Executes just before Main_Demo is made visible.
function Main_Demo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Main_Demo (see VARARGIN)

% Choose default command line output for Main_Demo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Main_Demo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Main_Demo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnThoat.
function btnThoat_Callback(hObject, eventdata, handles)
% hObject    handle to btnThoat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnMoAnhDaTV.
function btnMoAnhDaTV_Callback(hObject, eventdata, handles)
% hObject    handle to btnMoAnhDaTV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnTrich.
function btnTrich_Callback(hObject, eventdata, handles)
% hObject    handle to btnTrich (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnChonAnhThuyVan.
function btnChonAnhThuyVan_Callback(hObject, eventdata, handles)
% hObject    handle to btnChonAnhThuyVan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnNhung.
function btnNhung_Callback(hObject, eventdata, handles)
% hObject    handle to btnNhung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnOpenImage.
function btnOpenImage_Callback(hObject, eventdata, handles)
% hObject    handle to btnOpenImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
