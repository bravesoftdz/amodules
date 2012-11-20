{**
@Abstract User Interface client
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 19.11.2012
}
unit AUi;

{$I A.inc}

interface

uses
  ABase, ABaseTypes,
  AStrings,
  AUiBase, AUiImages, AUiListBox, AUiPageControl, AUiProcVars, AUiTreeView;

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

{var
  UiProcs: AUiProcs_Type;}

// --- Box ---

function Box_New(Parent: AControl; BoxType: AInteger): AControl; stdcall;
begin
  Result := AUiProcVars.AUi_Box_New(Parent, BoxType);
end;

// --- Control ---

function Control_Free(Control: AControl): AError; stdcall;
begin
  AUiProcVars.AUi_Control_Free(Control);
  Result := 0;
end;

function Control_SetAlign(Control: AControl; Align: TUIAlign): AError; stdcall;
begin
  AUiProcVars.AUi_Control_SetAlign(Control, Align);
  Result := 0;
end;

function Control_SetClientSize(Control: AControl; ClientWidth, ClientHeight: AInteger): AError; stdcall;
begin
  AUiProcVars.AUi_Control_SetClientSize(Control, ClientWidth, ClientHeight);
  Result := 0;
end;

function Control_SetColor(Control: AControl; Color: AColor): AError; stdcall;
begin
  AUiProcVars.AUi_Control_SetColor(Control, Color);
  Result := 0;
end;

function Control_SetFont1A(Control: AControl; {const} FontName: PAnsiChar; FontSize: AInteger): AError; stdcall;
var
  S: AString_Type;
begin
  if Assigned(AUiControl_SetFont1A) then
  begin
    Result := AUiProcVars.AUiControl_SetFont1A(Control, FontName, FontSize);
    Exit;
  end;
  if Assigned(AUi_Control_SetFont1) then
  begin
    AString_AssignA(S, FontName);
    AUiProcVars.AUi_Control_SetFont1(Control, S, FontSize);
    Result := 0;
    Exit;
  end;
  Result := -1;
end;

function Control_SetOnChange(Control: AControl; OnChange: ACallbackProc): AError; stdcall;
begin
  Result := AUiProcVars.AUi_Control_SetOnChange(Control, OnChange);
end;

function Control_SetPosition(Control: AControl; Left, Top: AInteger): AError; stdcall;
begin
  AUiProcVars.AUi_Control_SetPosition(Control, Left, Top);
  Result := 0;
end;

function Control_SetSize(Control: AControl; Width, Height: Integer): AError; stdcall;
begin
  AUiProcVars.AUi_Control_SetSize(Control, Width, Height);
  Result := 0;
end;

function Control_SetTextWS(Control: AControl; const Value: AWideString): AError; stdcall;
begin
  AUiProcVars.AUi_Control_SetTextWS(Control, Value);
  Result := 0;
end;

function Control_SetVisible(Control: AControl; Value: ABoolean): AError; stdcall;
begin
  AUiProcVars.AUi_Control_SetVisible(Control, Value);
  Result := 0;
end;

// --- Dialog ---

function Dialog_GetWindow(Dialog: ADialog): AWindow; stdcall;
begin
  Result := AUiProcVars.Ui_Dialog_GetWindow(Dialog);
end;

function Dialog_New(Buttons: AUIWindowButtons): ADialog; stdcall;
begin
  Result := AUiProcVars.Ui_Dialog_New(Buttons);
end;

// --- Grid ---

function Grid_Clear(Grid: AControl): AError; stdcall;
begin
  Result := AUiProcVars.AUiGrid_Clear(Grid);
end;

function Grid_DeleteRow2(Grid: AControl; Row: AInteger): AError; stdcall;
begin
  Result := AUiProcVars.AUiGrid_DeleteRow2(Grid, Row);
end;

function Grid_FindInt(Grid: AControl; Col, Value: AInteger): AInteger; stdcall;
begin
  Result := AUiProcVars.AUiGrid_FindInt(Grid, Col, Value);
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
  Result := AUiProcVars.UI_Label_New(Parent);
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
  Result := AUiProcVars.MainWindow_AddMenuItem(ParentItemName, Name, Text, OnClick, ImageId, Weight);
end;

function MainWindow_GetMainContainer(): AControl; stdcall;
begin
  Result := AUiProcVars.MainWindow_GetMainContainer();
end;

// --- Menu ---

function Menu_AddItem2WS(Parent: AMenuItem; const Name, Text: AWideString;
    OnClick: ACallbackProc; ImageId, Weight: Integer): AMenuItem; stdcall;
begin
  Result := AUiProcVars.Menu_AddItem2WS(Parent, Name, Text, OnClick, ImageId, Weight);
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
  Result := AUiProcVars.UI_ProgressBar_New(Parent, Max);
end;

function ProgressBar_StepIt(ProgressBar: AControl): AInteger; stdcall;
begin
  Result := AUiProcVars.UI_ProgressBar_StepIt(ProgressBar);
end;

// --- Splitter ---

function Splitter_New(Parent: AControl; SplitterType: AUISplitterType): AControl; stdcall;
begin
  Result := AUiProcVars.UI_Splitter_New(Parent, SplitterType);
end;

// --- TextView ---

function TextView_AddLineWS(TextView: AControl; const Text: AWideString): AInteger; stdcall;
begin
  Result := AUiProcVars.UI_TextView_AddLine(TextView, Text);
end;

function TextView_New(Parent: AControl; ViewType: AInteger): AControl; stdcall;
begin
  Result := AUiProcVars.UI_TextView_New(Parent, ViewType);
end;

function TextView_SetReadOnly(TextView: AControl; ReadOnly: ABoolean): AError; stdcall;
begin
  AUiProcVars.UI_TextView_SetReadOnly(TextView, ReadOnly);
  Result := 0;
end;

function TextView_SetScrollBars(TextView: AControl; ScrollBars: AInteger): AError; stdcall;
begin
  AUiProcVars.UI_TextView_SetScrollBars(TextView, ScrollBars);
  Result := 0;
end;

function TextView_SetWordWrap(TextView: AControl; Value: ABoolean): AError; stdcall;
begin
  AUiProcVars.UI_TextView_SetWordWrap(TextView, Value);
  Result := 0;
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
  AUiProcVars.UI_Window_Free(Window);
end;

function Window_New(): AControl; stdcall;
begin
  Result := AUiProcVars.UI_Window_New();
end;

function Window_SetBorderStyle(Window: AWindow; BorderStyle: AInteger): AError; stdcall;
begin
  Result := AUiProcVars.UI_Window_SetBorderStyle(Window, BorderStyle);
end;

function Window_SetFormStyle(Window: AWindow; FormStyle: AInteger): AError; stdcall;
begin
  AUiProcVars.UI_Window_SetFormStyle(Window, FormStyle);
  Result := 0;
end;

function Window_SetPosition(Window: AWindow; Position: AInteger): AError; stdcall;
begin
  AUiProcVars.UI_Window_SetPosition(Window, Position);
  Result := 0;
end;

function Window_ShowModal(Window: AWindow): ABoolean; stdcall;
begin
  Result := AUiProcVars.UI_Window_ShowModal(Window);
end;

{ Public }

function Init(): AError; stdcall;
begin
  if not(Assigned(AUiProcVars.AUi_Init)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUi_Init();
end;

function OnDone_Connect(Proc: ACallbackProc): AInteger; stdcall;
begin
  if not(Assigned(AUiProcVars.AUi_OnDone_Connect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUi_OnDone_Connect(Proc);
end;

function OnDone_Disconnect(Proc: ACallbackProc): AInteger; stdcall;
begin
  if not(Assigned(AUiProcVars.AUi_OnDone_Disconnect)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUi_OnDone_Disconnect(Proc);
end;

function ShowHelp(): AError; stdcall;
begin
  if not(Assigned(AUiProcVars.AUi_ShowHelp)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUiProcVars.AUi_ShowHelp();
end;

function ShowHelp2WS(const FileName: AWideString): AError; stdcall;
var
  S: AString_Type;
begin
  if not(Assigned(AUiProcVars.AUi_ShowHelp2)) then
  begin
    Result := -1;
    Exit;
  end;
  AString_AssignWS(S, FileName);
  Result := AUiProcVars.AUi_ShowHelp2(S);
end;

end.