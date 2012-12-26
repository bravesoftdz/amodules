{**
@Abstract User Interface client
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 26.12.2012
}
unit AUi;

{$I A.inc}

interface

uses
  ABase, ABaseTypes,
  AStrings,
  AUiBase, AUiBox, AUiControls, AUiControlsA, AUiDialogs, AUiEvents, AUiGrids, AUiImages, AUiLabels,
  AUiListBox,
  AUiMain,
  AUiMainWindow2,
  AUiMenus,
  AUiPageControl,
  AUiProgressBar,
  AUiSplitter, AUiTextView, AUiTreeView, AUiWindows;

// ----

function Init(): AError; stdcall;

//** �������������� � ������� OnDone.
function OnDone_Connect(Proc: ACallbackProc): AInteger; stdcall;

//** ����������� �� ������� OnDone.
function OnDone_Disconnect(Proc: ACallbackProc): AInteger; stdcall;

//** ���������� ���������� ����������.
function ShowHelp(): AError; stdcall;

//** ���������� ���������� ����������.
function ShowHelp2WS(const FileName: AWideString): AError; stdcall;

// --- Box ---

{**
  ������� ����� ������.
  BoxType
    0 - Simple
    1 - HBox
    2 - VBox
}
function Box_New(Parent: AControl; BoxType: AInteger): AControl; stdcall;

// --- Control ---

//** ����������� ������ ������� ���������.
function Control_Free(Control: AControl): AError; stdcall;

//** ������ ������������� ��������.
function Control_SetAlign(Control: AControl; Align: TUIAlign): AError; stdcall;

//** ������ ���������� ������ ��������.
function Control_SetClientSize(Control: AControl; ClientWidth, ClientHeight: AInteger): AError; stdcall;

//** ������ ���� ��������.
function Control_SetColor(Control: AControl; Color: AColor): AError; stdcall;

//** ������ �����.
function Control_SetFont1A(Control: AControl; {const} FontName: PAnsiChar; FontSize: AInteger): AError; stdcall;

function Control_SetOnChange(Control: AControl; OnChange: ACallbackProc): AError; stdcall;

//** ������ ������������ ��������.
function Control_SetPosition(Control: AControl; Left, Top: AInteger): AError; stdcall;

//** ������ ������� ������ ��������.
function Control_SetSize(Control: AControl; Width, Height: Integer): AError; stdcall;

//** ������ ����� ��������.
function Control_SetTextWS(Control: AControl; const Value: AWideString): AError; stdcall;

//** ������ ��������� ��������.
function Control_SetVisible(Control: AControl; Value: ABoolean): AError; stdcall;

// --- Dialog ---

//** ���������� ����.
function Dialog_GetWindow(Dialog: ADialog): AWindow; stdcall;

//** ������� ����� ������.
function Dialog_New(Buttons: AUIWindowButtons): ADialog; stdcall;

// --- Grid ---

// ���������� ������� �������. ���� �������� ������ ��� TStringGrid.
function Grid_Clear(Grid: AControl): AError; stdcall;

// ������� ��������� ������.
function Grid_DeleteRow2(Grid: AControl; Row: AInteger): AError; stdcall;

// ���������� ����� �������� � �������� �������. �������� ���� ������ ��� TStringGrid.
function Grid_FindInt(Grid: AControl; Col, Value: AInteger): AInteger; stdcall;

// --- Image ---

//** ��������� ����������� �� �����.
function Image_LoadFromFileWS(Image: AControl; const FileName: AWideString): AError; stdcall;

//** ������� ����� �������-�����������.
function Image_New(Parent: AControl): AControl; stdcall;

// --- Label ---

//** ������� ����� ������� ��������� ������.
function Label_New(Parent: AControl): AControl; stdcall;

// --- ListBox ---

//** ��������� ������ � ������.
function ListBox_AddP(ListBox: AControl; const Text: APascalString): AInteger; stdcall;

//** ������� ����� ������� ListBox.
function ListBox_New(Parent: AControl): AControl; stdcall;

// --- MainWindow ---

//** ��������� ����� ���� � ������� ����.
function MainWindow_AddMenuItem(const ParentItemName, Name, Text: APascalString;
    OnClick: ACallbackProc; ImageID, Weight: Integer): AMenuItem; stdcall;

//** ���������� �������� ��������� UI.
function MainWindow_GetMainContainer(): AControl; stdcall;

// --- Menu ---

//** ��������� ����� ����.
function Menu_AddItem2WS(Parent: AMenuItem; const Name, Text: AWideString;
    OnClick: ACallbackProc; ImageId, Weight: Integer): AMenuItem; stdcall;

// --- PageControl ---

{**
  ������� ����� �������. ����������:
  0 - ���� ��������� ������, ����� ������������� ����� ������� (���� �������� ������ �������)
}
function PageControl_AddPageWS(PageControl: AControl; const Name, Text: AWideString): AControl; stdcall;

function PageControl_New(Parent: AControl): AControl; stdcall;

// --- ProgressBar ---

//** ������� ����� ������� ����������� ��������.
function ProgressBar_New(Parent: AControl; Max: AInteger): AControl; stdcall;

//** ����������� �������� ��������� �� ���� ���.
function ProgressBar_StepIt(ProgressBar: AControl): AInteger; stdcall;

// --- Splitter ---

{**
  ������� ������������ �����������.
  SplitterType
    0 - HSplitter (Align=alTop)
    1 - VSplitter (Align=alLeft)
    2 - HSplitter (Align=alBottom)
    3 - VSplitter (Align=alRight)
}
function Splitter_New(Parent: AControl; SplitterType: AUISplitterType): AControl; stdcall;

// --- TextView ---

//** ��������� ������ � ������� TextView.
function TextView_AddLineWS(TextView: AControl; const Text: AWideString): AInteger; stdcall;

{**
  ������� ����� ������� �������������� ������
  ViewType
    0 - TMemo
    1 - RichEdit
}
function TextView_New(Parent: AControl; ViewType: AInteger): AControl; stdcall;

//** ������������� �������� ��������� "������ ������".
function TextView_SetReadOnly(TextView: AControl; ReadOnly: ABoolean): AError; stdcall;

{**
  ��������� ����� �������� ����������.
  ScrollBars
    0 - ssNone
    1 - ssHorizontal
    2 - ssVertical
    3 - ssBoth
}
function TextView_SetScrollBars(TextView: AControl; ScrollBars: AInteger): AError; stdcall;

//** ������ �������� "���������� �� ������".
function TextView_SetWordWrap(TextView: AControl; Value: ABoolean): AError; stdcall;

// --- TreeView ---

//** ��������� ������� � TreeView.
function TreeView_AddItemWS(TreeView: AControl; Parent: ATreeNode; Text: AWideString): ATreeNode; stdcall;

//** ������� ����� ������� TreeView.
function TreeView_New(Parent: AControl): AControl; stdcall;

// --- Window ---

//** ����������� ����.
procedure Window_Free(Window: AWindow); stdcall;

//** ������� ����� ����.
function Window_New(): AControl; stdcall;

//** ������ ����� ��������� ����.
function Window_SetBorderStyle(Window: AWindow; BorderStyle: AInteger): AError; stdcall;

//** ������ ����� ����.
function Window_SetFormStyle(Window: AWindow; FormStyle: AInteger): AError; stdcall;

//** ������ ������� ����.
function Window_SetPosition(Window: AWindow; Position: AInteger): AError; stdcall;

//** ���������� ���� ��������.
function Window_ShowModal(Window: AWindow): ABoolean; stdcall;

implementation

// --- Box ---

function Box_New(Parent: AControl; BoxType: AInteger): AControl;
begin
  Result := AUiBox.AUiBox_New(Parent, BoxType);
end;

// --- Control ---

function Control_Free(Control: AControl): AError;
begin
  Result := AUiControls.AUiControl_Free(Control);
end;

function Control_SetAlign(Control: AControl; Align: TUiAlign): AError;
begin
  Result := AUiControls.AUiControl_SetAlign(Control, Align);
end;

function Control_SetClientSize(Control: AControl; ClientWidth, ClientHeight: AInteger): AError;
begin
  Result := AUiControls.AUiControl_SetClientSize(Control, ClientWidth, ClientHeight);
end;

function Control_SetColor(Control: AControl; Color: AColor): AError;
begin
  Result := AUiControls.AUiControl_SetColor(Control, Color);
end;

function Control_SetFont1A(Control: AControl; {const} FontName: PAnsiChar; FontSize: AInteger): AError;
begin
  Result := AUiControl_SetFont1A(Control, FontName, FontSize);
end;

function Control_SetOnChange(Control: AControl; OnChange: ACallbackProc): AError;
begin
  Result := AUiControl_SetOnChange(Control, OnChange);
end;

function Control_SetPosition(Control: AControl; Left, Top: AInteger): AError;
begin
  Result := AUiControl_SetPosition(Control, Left, Top);
end;

function Control_SetSize(Control: AControl; Width, Height: Integer): AError;
begin
  Result := AUiControl_SetSize(Control, Width, Height);
end;

function Control_SetTextWS(Control: AControl; const Value: AWideString): AError;
begin
  Result := AUiControl_SetTextP(Control, Value);
end;

function Control_SetVisible(Control: AControl; Value: ABoolean): AError;
begin
  Result := AUiControl_SetVisible(Control, Value);
end;

// --- Dialog ---

function Dialog_GetWindow(Dialog: ADialog): AWindow; stdcall;
begin
  Result := AUiDialog_GetWindow(Dialog);
end;

function Dialog_New(Buttons: AUIWindowButtons): ADialog; stdcall;
begin
  Result := AUiDialog_New(Buttons);
end;

// --- Grid ---

function Grid_Clear(Grid: AControl): AError; stdcall;
begin
  Result := AUiGrid_Clear(Grid);
end;

function Grid_DeleteRow2(Grid: AControl; Row: AInteger): AError; stdcall;
begin
  Result := AUiGrid_DeleteRow2(Grid, Row);
end;

function Grid_FindInt(Grid: AControl; Col, Value: AInteger): AInteger; stdcall;
begin
  Result := AUiGrid_FindInt(Grid, Col, Value);
end;

// --- Image ---

function Image_LoadFromFileWS(Image: AControl; const FileName: AWideString): AError; stdcall;
begin
  Result := AUiImage_LoadFromFileP(Image, FileName);
end;

function Image_New(Parent: AControl): AControl; stdcall;
begin
  Result := AUiImage_New(Parent);
end;

// --- Label ---

function Label_New(Parent: AControl): AControl; stdcall;
begin
  Result := AUiLabel_New(Parent);
end;

// --- ListBox ---

function ListBox_AddP(ListBox: AControl; const Text: APascalString): AInteger; stdcall;
begin
  Result := AUiListBox_AddP(ListBox, Text);
end;

function ListBox_New(Parent: AControl): AControl; stdcall;
begin
  Result := AUiListBox_New(Parent);
end;

// --- MainWindow ---

function MainWindow_AddMenuItem(const ParentItemName, Name, Text: APascalString;
    OnClick: ACallbackProc; ImageID, Weight: Integer): AMenuItem; stdcall;
begin
  Result := AUiMainWindow_AddMenuItemP(ParentItemName, Name, Text, OnClick, ImageId, Weight);
end;

function MainWindow_GetMainContainer(): AControl; stdcall;
begin
  Result := AUiMainWindow_GetMainContainer();
end;

// --- Menu ---

function Menu_AddItem2WS(Parent: AMenuItem; const Name, Text: AWideString;
    OnClick: ACallbackProc; ImageId, Weight: Integer): AMenuItem; stdcall;
begin
  Result := AUiMenus.AUiMenu_AddItem2P(Parent, Name, Text, OnClick, ImageId, Weight);
end;

// --- PageControl ---

function PageControl_AddPageWS(PageControl: AControl; const Name, Text: AWideString): AControl; stdcall;
begin
  Result := AUiPageControl_AddPageP(PageControl, Name, Text);
end;

function PageControl_New(Parent: AControl): AControl; stdcall;
begin
  Result := AUiPageControl_New(Parent);
end;

// --- ProgressBar ---

function ProgressBar_New(Parent: AControl; Max: AInteger): AControl; stdcall;
begin
  Result := AUiProgressBar_New(Parent, Max);
end;

function ProgressBar_StepIt(ProgressBar: AControl): AInteger; stdcall;
begin
  Result := AUiProgressBar_StepIt(ProgressBar);
end;

// --- Splitter ---

function Splitter_New(Parent: AControl; SplitterType: AUISplitterType): AControl; stdcall;
begin
  Result := AUiSplitter_New(Parent, SplitterType);
end;

// --- TextView ---

function TextView_AddLineWS(TextView: AControl; const Text: AWideString): AInteger; stdcall;
begin
  Result := AUiTextView_AddLineP(TextView, Text);
end;

function TextView_New(Parent: AControl; ViewType: AInteger): AControl; stdcall;
begin
  Result := AUiTextView_New(Parent, ViewType);
end;

function TextView_SetReadOnly(TextView: AControl; ReadOnly: ABoolean): AError; stdcall;
begin
  Result := AUiTextView_SetReadOnly(TextView, ReadOnly);
end;

function TextView_SetScrollBars(TextView: AControl; ScrollBars: AInteger): AError; stdcall;
begin
  Result := AUiTextView_SetScrollBars(TextView, ScrollBars);
end;

function TextView_SetWordWrap(TextView: AControl; Value: ABoolean): AError; stdcall;
begin
  Result := AUiTextView_SetWordWrap(TextView, Value);
end;

// --- TreeView ---

function TreeView_AddItemWS(TreeView: AControl; Parent: ATreeNode; Text: AWideString): ATreeNode; stdcall;
begin
  Result := AUiTreeView_AddItemP(TreeView, Parent, Text);
end;

function TreeView_New(Parent: AControl): AControl; stdcall;
begin
  Result := AUiTreeView_New(Parent);
end;

// --- Window ---

procedure Window_Free(Window: AWindow); stdcall;
begin
  AUiWindow_Free(Window);
end;

function Window_New(): AControl; stdcall;
begin
  Result := AUiWindow_New();
end;

function Window_SetBorderStyle(Window: AWindow; BorderStyle: AInteger): AError; stdcall;
begin
  Result := AUiWindow_SetBorderStyle(Window, BorderStyle);
end;

function Window_SetFormStyle(Window: AWindow; FormStyle: AInteger): AError; stdcall;
begin
  Result := AUiWindow_SetFormStyle(Window, FormStyle);
end;

function Window_SetPosition(Window: AWindow; Position: AInteger): AError; stdcall;
begin
  Result := AUiWindow_SetPosition(Window, Position);
end;

function Window_ShowModal(Window: AWindow): ABoolean; stdcall;
begin
  Result := AUiWindow_ShowModal(Window);
end;

{ Public }

function Init(): AError; stdcall;
begin
  Result := AUi_Init();
end;

function OnDone_Connect(Proc: ACallbackProc): AInteger; stdcall;
begin
  Result := AUi_OnDone_Connect(Proc);
end;

function OnDone_Disconnect(Proc: ACallbackProc): AInteger; stdcall;
begin
  Result := AUi_OnDone_Disconnect(Proc);
end;

function ShowHelp(): AError; stdcall;
begin
  Result := AUi_ShowHelp();
end;

function ShowHelp2WS(const FileName: AWideString): AError; stdcall;
begin
  Result := AUi_ShowHelp2P(FileName);
end;

end.
