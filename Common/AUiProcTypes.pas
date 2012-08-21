{**
@Abstract User interface proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 25.10.2008
@LastMod 21.08.2012
}
unit AUiProcTypes;

{A01}
{A02}

interface

uses
  ABase, ABaseTypes, AUiBase;

type
  AUi_Init_Proc = function(): AError; stdcall;
  AUi_Fin_Proc = function(): AError; stdcall;
type
  AUi_InitMainMenu_Proc = function: AInteger; stdcall;
  AUi_InitMainTrayIcon_Proc = function: AInteger; stdcall;
  AUi_InitMenus_Proc = function(): AError; stdcall;
  AUi_InitMenus02_Proc = procedure(); stdcall;
  AUi_GetIsShowApp_Proc = function(): ABoolean; stdcall;
  AUi_SetIsShowApp_Proc = procedure(Value: ABoolean); stdcall;
  AUi_SetOnMainFormCreate02_Proc = procedure(Value: AProc02); stdcall;
  AUi_ProcessMessages_Proc = function(): AError; stdcall;
  AUi_ProcessMessages02_Proc = procedure(); stdcall;
  AUi_ShowHelp_Proc = function(): AError; stdcall;
  {$ifdef ADepr}
  AUi_ShowHelp2WS_Proc = function(const FileName: AWideString): AError; stdcall;
  {$endif}
  AUi_ShowHelp02_Proc = procedure(); stdcall;
  AUi_Shutdown_Proc = function(): AError; stdcall;
  AUi_Shutdown02_Proc = procedure(); stdcall;
  AUi_OnDone_Connect_Proc = function(Proc: ACallbackProc): AInteger; stdcall;
  AUi_OnDone_Disconnect03_Proc = function(Proc: ACallbackProc03): AInteger; stdcall;

  //AUi_IsShowApp_Proc = AUi_GetIsShowApp_Proc;
  //AUi_IsShowApp_Set_Proc = AUi_SetIsShowApp_Proc;

type
  { BoxType: 0 - Simple; 1 - HBox; 2 - VBox }
  AUi_Box_New = function(Parent: AControl; BoxType: AInteger): AControl; stdcall;
type
  AUi_Button_New = function(Parent: AControl): AButton; stdcall;
type
  AUi_Calendar_GetDate = function(Calendar: AControl): TDateTime; stdcall;
  AUi_Calendar_New = function(Parent: AControl): AControl; stdcall;
  AUi_Calendar_SetMonth = procedure(Calendar: AControl; Value: AInteger); stdcall;

type
  AUi_Control_Free_Proc = procedure(Control: AControl); stdcall;
  AUi_Control_FreeAndNil_Proc = procedure(var Control: AControl); stdcall;
  AUi_Control_GetEnabled_Proc = function(Control: AControl): ABoolean; stdcall;
  AUi_Control_GetHeight_Proc = function(Control: AControl): AInteger; stdcall;
  AUi_Control_GetHint_Proc = function(Control: AControl; out Value: AString_Type): AInteger; stdcall;
  {$ifdef ADepr}
  AUi_Control_GetHintW = function(Control: AControl): AWideString; stdcall;
  {$endif}
  AUi_Control_GetName_Proc = function(Control: AControl; out Value: AString_Type): AInteger; stdcall;
  {$ifdef ADepr}
  AUi_Control_GetNameW = function(Control: AControl): AWideString; stdcall;
  {$endif}
  AUi_Control_GetText_Proc = function(Control: AControl; out Value: AString_Type): AInteger; stdcall;
  {$ifdef ADepr}
  AUi_Control_GetTextW = function(Control: AControl): AWideString; stdcall;
  {$endif}
  AUi_Control_GetVisible_Proc = function(Control: AControl): ABoolean; stdcall;
  AUi_Control_GetWidth_Proc = function(Control: AControl): AInteger; stdcall;
  AUi_Control_SetAlign_Proc = procedure(Control: AControl; Align: TUIAlign); stdcall;
  AUi_Control_SetClientSize_Proc = procedure(Control: AControl; ClientWidth, ClientHeight: AInteger); stdcall;
  AUi_Control_SetColor_Proc = procedure(Control: AControl; Color: AColor); stdcall;
  AUi_Control_SetEnabled_Proc = procedure(Control: AControl; Value: ABoolean); stdcall;
  AUi_Control_SetFocus_Proc = function(Control: AControl): ABoolean; stdcall;
  AUi_Control_SetFont1_Proc = procedure(Control: AControl; const FontName: AString_Type; FontSize: AInteger); stdcall;
  AUi_Control_SetFont2_Proc = procedure(Control: AControl; const FontName: AString_Type; FontSize: AInteger; Color: AColor); stdcall;
  {$ifdef ADepr}
  AUi_Control_SetFontW1 = procedure(Control: AControl; const FontName: AWideString; FontSize: AInteger); stdcall;
  AUi_Control_SetFontW2 = procedure(Control: AControl; const FontName: AWideString; FontSize: AInteger; Color: AColor); stdcall;
  {$endif}
  AUi_Control_SetHint_Proc = procedure(Control: AControl; const Value: AString_Type); stdcall;
  {$ifdef ADepr}
  AUi_Control_SetHintW = procedure(Control: AControl; const Value: AWideString); stdcall;
  {$endif}
  AUi_Control_SetName_Proc = procedure(Control: AControl; const Value: AString_Type); stdcall;
  {$ifdef ADepr}
  AUi_Control_SetNameW = procedure(Control: AControl; const Value: AWideString); stdcall;
  {$endif}
  AUi_Control_SetOnChange_Proc = function(Control: AControl; OnChange: ACallbackProc03): AError; stdcall;
  AUi_Control_SetOnChange02 = procedure(Control: AControl; OnChange: ACallbackProc02); stdcall;
  AUi_Control_SetOnClick_Proc = procedure(Control: AControl; Value: ACallbackProc03); stdcall;
  AUi_Control_SetOnClick02 = procedure(Control: AControl; Value: ACallbackProc02); stdcall;
  //AUi_Control_SetOnClick03 = procedure(Control: AControl; Value: ACallbackProc03); stdcall;
  AUi_Control_SetPosition_Proc = procedure(Control: AControl; Left, Top: AInteger); stdcall;
  AUi_Control_SetSize_Proc = procedure(Control: AControl; Width, Height: AInteger); stdcall;
  AUi_Control_SetText_Proc = procedure(Control: AControl; const Value: AString_Type); stdcall;
  {$ifdef ADepr}
  AUi_Control_SetTextWS_Proc = procedure(Control: AControl; const Value: AWideString); stdcall;
  {$endif}
  AUi_Control_SetVisible_Proc = procedure(Control: AControl; Value: ABoolean); stdcall;
  AUi_Control_SetWidth_Proc = function(Control: AControl; Value: AInteger): AInteger; stdcall;

type
  AUi_DataSource_New_Proc = function(): PADataSource; stdcall;
  AUi_DataSource_SetOnDataChange02_Proc = procedure(DataSource: PADataSource; OnDataChange: ACallbackProc02); stdcall;
  AUi_DataSource_SetOnDataChange03_Proc = procedure(DataSource: PADataSource; OnDataChange: ACallbackProc03); stdcall;

type
  AUi_Dialog_About_Proc = procedure(); stdcall;
  AUi_Dialog_About_New_Proc = function: AWindow; stdcall;
  AUi_Dialog_AddButton_Proc = function(Win: AWindow; Left, Width: AInteger;
      const Text: AString_Type; OnClick: ACallbackProc03): AControl; stdcall;
  AUi_Dialog_AddButton02 = function(Win: AWindow; Left, Width: AInteger;
      const Text: AWideString; OnClick: ACallbackProc02): AControl; stdcall;
  AUi_Dialog_Calendar_Proc = function(var Date: TDateTime; CenterX, CenterY: AInteger): ABoolean; stdcall;
  AUi_Dialog_Color_Proc = function(var Color: AColor): ABoolean; stdcall;
  AUi_Dialog_DateFilter_Proc = function(var Group: Integer; var DateBegin, DateEnd: TDateTime): Boolean; stdcall;

  AUi_Dialog_Error_Proc = procedure(const Caption, UserMessage, ExceptMessage: AString_Type); stdcall;
  {$ifdef ADepr}
  AUi_Dialog_ErrorWS_Proc = procedure(const Caption, UserMessage, ExceptMessage: AWideString); stdcall;
  //AUi_Dialog_Error = AUi_Dialog_ErrorWS_Proc;
  {$endif}
  AUi_Dialog_Font_Proc = function(var FontName: AString_Type; var FontSize: AInteger; FontColor: AColor): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_FontWS_Proc = function(var FontName: AWideString; var FontSize: AInteger; FontColor: AColor): ABoolean; stdcall;
  //AUi_Dialog_Font = AUi_Dialog_FontWS_Proc;
  {$endif}
  AUi_Dialog_GetWindow_Proc = function(Dialog: ADialog): AWindow; stdcall;
  AUi_Dialog_InputBox_Proc = function(const Text: AString_Type; var Value: AString_Type): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_InputBoxWS_Proc = function(const Text: AWideString; var Value: AWideString): ABoolean; stdcall;
  //AUi_Dialog_InputBox = AUi_Dialog_InputBoxWS_Proc;
  {$endif}
  AUi_Dialog_InputBox2_Proc = function(const Caption, Text1, Text2: AString_Type; var Value1, Value2: AString_Type): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_InputBox2WS_Proc = function(const Caption, Text1, Text2: AWideString; var Value1, Value2: AWideString): ABoolean; stdcall;
  //AUi_Dialog_InputBox2 = AUi_Dialog_InputBox2WS_Proc;
  {$endif}
  AUi_Dialog_InputBoxA_Proc = function(const Caption, Text: AString_Type; var Value: AString_Type): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_InputBoxAWS_Proc = function(const Caption, Text: AWideString; var Value: AWideString): ABoolean; stdcall;
  //AUi_Dialog_InputBoxA = AUi_Dialog_InputBoxAWS_Proc;
  {$endif}
  AUi_Dialog_Login_Proc = function(var UserName, Password: AString_Type; IsSave: ABoolean): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_LoginWS_Proc = function(var UserName, Password: AWideString; IsSave: ABoolean): ABoolean; stdcall;
  //AUi_Dialog_Login = AUi_Dialog_LoginWS_Proc;
  {$endif}
  AUi_Dialog_Message_Proc = function(const Text, Caption: AString_Type; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_MessageWS_Proc = function(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  //AUi_Dialog_Message = AUi_Dialog_MessageWS_Proc;
  {$endif}
  AUi_Dialog_New_Proc = function(Buttons: AUIWindowButtons): ADialog; stdcall;
  AUi_Dialog_OpenFile_Proc = function(const InitialDir, Filter, Title: AString_Type; var FileName: AString_Type): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_OpenFileWS_Proc = function(const InitialDir, Filter, Title: AWideString; var FileName: AWideString): ABoolean; stdcall;
  //AUi_Dialog_OpenFile = AUi_Dialog_OpenFileWS_Proc;
  {$endif}
  AUi_Dialog_OpenFileA_Proc = function(const InitialDir, Filter, DefaultExt, Title: AString_Type; var FileName: AString_Type; var FilterIndex: AInteger): ABoolean; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_OpenFileAWS_Proc = function(const InitialDir, Filter, DefaultExt, Title: AWideString; var FileName: AWideString; var FilterIndex: AInteger): ABoolean; stdcall;
  //AUi_Dialog_OpenFileA = AUi_Dialog_OpenFileAWSProc;
  {$endif}
  AUi_Dialog_SaveFile_Proc = function(const Dir, Ext, DefFileName: AString_Type; out Value: AString_Type): AInteger; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_SaveFileWS_Proc = function(const Dir, Ext, DefFileName: AWideString): AWideString; stdcall;
  //AUi_Dialog_SaveFile = AUi_Dialog_SaveFileWS_Proc;
  {$endif}
  AUi_Dialog_SaveFileA_Proc = function(const InitialDir, DefExt, DefFileName, Filter: AString_Type; var FilterIndex: AInteger; out Value: AString_Type): AInteger; stdcall;
  {$ifdef ADepr}
  AUi_Dialog_SaveFileAWS_Proc = function(const InitialDir, DefExt, DefFileName, Filter: AWideString; var FilterIndex: AInteger): AWideString; stdcall;
  //AUi_Dialog_SaveFileA = AUi_Dialog_SaveFileAWS_Proc;
  {$endif}

type
  AUi_Edit_CheckDate = function(Edit: AControl; out Value: TDateTime): ABoolean; stdcall;
  AUi_Edit_CheckFloat = function(Edit: AControl; out Value: Double): ABoolean; stdcall;
  // ��������� ����� � Int. ���� ������, �� ��������� �� ���� ��������� � ���������� false.
  AUi_Edit_CheckInt = function(Edit: AControl; out Value: AInteger): ABoolean; stdcall;
  // ������� ����� ������� TEdit
  AUi_Edit_New = function(Parent: AControl): AControl; stdcall;
  { EditType
    0 - TEdit
    1 - TEdit + Button
    2 - TComboBox }
  AUi_Edit_New02_Proc = function(Parent: AControl; EditType: AInteger; OnClick: ACallbackProc02; Left, Top, Width: AInteger): AControl; stdcall;
  AUi_Edit_NewEx_Proc = function(Parent: AControl; EditType: AInteger; OnClick: ACallbackProc03; Left, Top, Width: AInteger): AControl; stdcall;

type // --- V02 ---
  AUi_Grid_AddColumn = procedure(Grid: AControl; const FieldName, Title: AWideString; Width: Integer); stdcall;
  { GridType
    0 - StringGrid
    1 - DBGrid }
  AUi_Grid_New = function(Parent: AControl; GridType: AInteger): AControl; stdcall;
  // ��������������� �������� DBGrid
  AUi_Grid_RestoreColPropsWS_Proc = procedure(Grid: AControl; Config: AConfig; const Key: AWideString; Delimer: AWideChar = '\'); stdcall;
  // ��������� �������� DBGrid ��� StringGrid.
  AUi_Grid_SaveColPropsWS02_Proc = procedure(Grid: AControl; Config: AConfig; const Key: AWideString; Delimer: AWideChar = '\'); stdcall;
  // �������� ������ ������� � DBGrid
  AUi_Grid_SetColumnWidth = procedure(Grid: AControl; ColumnIndex, Width, Persent, MinWidth: AInteger); stdcall;
  AUi_Grid_SetColumnWidthA = procedure(Grid: AControl; ColumnIndex, Width, Persent, MinWidth, MaxWidth: AInteger); stdcall;
  AUi_Grid_SetDataSource = procedure(Grid: AControl; Value: PADataSource); stdcall;
type // --- V03 ---
  AUi_Grid_AddColumn_Proc = procedure(Grid: AControl; const FieldName, Title: AString_Type; Width: Integer); stdcall;
    // ���������� ������� �������. ���� �������� ������ ��� TStringGrid.
  AUi_Grid_Clear_Proc = function(Grid: AControl): AError; stdcall;
    // ���������� ������� �������. ���� �������� ������ ��� TStringGrid.
  AUi_Grid_ClearA_Proc = function(Grid: AControl; FixedRows: AInteger): AError; stdcall;
    // ������� ��������� ������.
  AUi_Grid_DeleteRow2_Proc = function(Grid: AControl; Row: AInteger): AError; stdcall;
    // ���������� ����� �������� � �������� �������. �������� ���� ������ ��� TStringGrid.
  AUi_Grid_FindInt_Proc = function(Grid: AControl; Col, Value: AInteger): AInteger; stdcall;
  { GridType
    0 - StringGrid
    1 - DBGrid }
  AUi_Grid_New_Proc = function(Parent: AControl; GridType: AInteger): AControl; stdcall;
  { ��������������� �������� DBGrid }
  AUi_Grid_RestoreColProps_Proc = procedure(Grid: AControl; Config: AConfig; const Key: AString_Type; Delimer: AChar = '\'); stdcall;
  { ��������� �������� DBGrid }
  AUi_Grid_SaveColProps_Proc = procedure(Grid: AControl; Config: AConfig; const Key: AString_Type; Delimer: AChar = '\'); stdcall;
  { �������� ������ ������� � DBGrid }
  AUi_Grid_SetColumnWidth_Proc = procedure(Grid: AControl; ColumnIndex, Width, Persent, MinWidth: AInteger); stdcall;
  AUi_Grid_SetColumnWidthA_Proc = procedure(Grid: AControl; ColumnIndex, Width, Persent, MinWidth, MaxWidth: AInteger); stdcall;
  AUi_Grid_SetDataSource_Proc = procedure(Grid: AControl; Value: PADataSource); stdcall;

type
  AUi_Image_New = function(Parent: AControl): AControl; stdcall;
  AUi_Image_LoadFromFile_Proc = function(Image: AControl; const FileName: AString_Type): ABoolean; stdcall;
  AUi_Image_LoadFromFileWS_Proc = function(Image: AControl; const FileName: AWideString): ABoolean; stdcall;
  //AUi_Image_LoadFromFile = AUi_Image_LoadFromFileWS_Proc;
type
  AUi_Label_New = function(Parent: AControl): AControl; stdcall;
type
  AUi_ListBox_Add_Proc = function(ListBox: AControl; const Text: AString_Type): Integer; stdcall;
  AUi_ListBox_AddWS_Proc = function(ListBox: AControl; const Text: AWideString): Integer; stdcall;
  //AUi_ListBox_Add = AUi_ListBox_AddWS_Proc;
  AUi_ListBox_Clear = procedure(ListBox: AControl); stdcall;
  AUi_ListBox_New = function(Parent: AControl): AControl; stdcall;
type
  AUi_MainToolBar = function: AControl; stdcall;
  {$IFDEF A01}AUi_MainToolBar_Set = procedure(ToolBar: AControl); stdcall;{$ENDIF}
  {$IFDEF A02}AUi_MainToolBar_Set = procedure(ToolBar: AControl); stdcall;{$ENDIF}
type
  AUi_MainTrayIcon_Proc = function(): ATrayIcon; stdcall;
type
  AUi_MainWindow = function: AWindow; stdcall;
  AUi_MainWindow_AddMenuItem02WS_Proc = function(const ParentItemName, Name, Text: AWideString;
      OnClick: ACallbackProc02; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_MainWindow_AddMenuItem03WS_Proc = function(const ParentItemName, Name, Text: AWideString;
      OnClick: ACallbackProc03; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_MainWindow_AddMenuItemWS_Proc = AUi_MainWindow_AddMenuItem02WS_Proc;
  AUi_MainWindow_AddMenuItemWS2_Proc = AUi_MainWindow_AddMenuItem02WS_Proc;
  AUi_MainWindow_Set = procedure(Value: AWindow); stdcall;
  AUi_MainWindow_SetA = procedure(Value: AWindow; ToolBar, StatusBar: AControl; Config: AConfig); stdcall;
type
  AUi_MainWindow_GetLeftContainer = function: AControl; stdcall;
  AUi_MainWindow_GetMainContainer = function: AControl; stdcall;
  AUi_MainWindow_GetRightContainer = function: AControl; stdcall;
type
  AUi_Menu_GetItems = function(Menu: AMenu): AMenuItem; stdcall;
  AUi_Menu_New = function(MenuType: AInteger): AMenu; stdcall;

type
  AUi_Menu_AddItem2WS02_Proc = function(Parent: AMenuItem; const Name, Text: AWideString; OnClick: ACallbackProc02; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_Menu_AddItem2WS03_Proc = function(Parent: AMenuItem; const Name, Text: AWideString; OnClick: ACallbackProc03; ImageId, Weight: AInteger): AMenuItem; stdcall;
  AUi_Menu_AddItem3_Proc = function(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInteger): AMenuItem; stdcall;
  AUi_MenuItem_FindByName = function(MenuItem: AMenuItem; const Name: AWideString): AMenuItem; stdcall;
type
  AUi_MenuItem_Add_Proc = function(MenuItem: AMenuItem; const Name, Text: AString_Type; OnClick: ACallbackProc; ImageID, Weight: Integer): AMenuItem; stdcall;
  AUi_MenuItem_Add2_Proc = function(Parent: AMenuItem; MenuItem: AMenuItem; Weight: AInteger): AMenuItem; stdcall;
  AUi_MenuItem_FindByName_Proc = function(MenuItem: AMenuItem; const Name: AString_Type): AMenuItem; stdcall;

type
  { ������� ����� �������. ����������:
    0 - ���� ��������� ������, ����� ������������� ����� ������� (���� �������� ������ �������) }
  AUi_PageControl_AddPage_Proc = function(PageControl: AControl; const Name, Text: AString_Type): AControl; stdcall;
  { ������� ����� �������. ����������:
    0 - ���� ��������� ������, ����� ������������� ����� ������� (���� �������� ������ �������) }
  AUi_PageControl_AddPageWS_Proc = function(PageControl: AControl; const Name, Text: AWideString): AControl; stdcall;
  AUi_PageControl_New_Proc = function(Parent: AControl): AControl; stdcall;

type
  AUi_ProgressBar_New_Proc = function(Parent: AControl; Max: AInteger): AControl; stdcall;
  AUi_ProgressBar_StepIt_Proc = function(ProgressBar: AControl): AInteger; stdcall;

type
  AUi_PropertyBox_Add = function(PropertyBox: AControl; const Caption: AWideString): Integer; stdcall;
  AUi_PropertyBox_AddA = function(PropertyBox: AControl; const Caption, Text, Hint: AWideString; EditWidth: AInteger): AInteger; stdcall;
  AUi_PropertyBox_Item_GetValue = function(PropertyBox: AControl; Index: Integer): AWideString; stdcall;
  AUi_PropertyBox_Item_SetValue = procedure(PropertyBox: AControl; Index: Integer; const Value: AWideString); stdcall;
  AUi_PropertyBox_New = function(Parent: AControl): AControl; stdcall;
  //A_UI_PropertyBox_Add = function(PropertyBox: AControl; const Caption: AString_Type): Integer; stdcall;
  //A_UI_PropertyBox_AddA = function(PropertyBox: AControl; const Caption, Text, Hint: AString_Type; EditWidth: AInteger): AInteger; stdcall;
  //A_UI_PropertyBox_Item_GetValue = function(PropertyBox: AControl; Index: Integer; out Value: AString_Type): AInteger; stdcall;
  //A_UI_PropertyBox_Item_SetValue = procedure(PropertyBox: AControl; Index: Integer; const Value: AString_Type); stdcall;
  //A_UI_PropertyBox_New = function(Parent: AControl): AControl; stdcall;

type
  AUi_Report_New = function(Parent: AControl): AReport; stdcall;
  AUi_Report_SetText = procedure(Report: AReport; const Value: AWideString); stdcall;
  A_UI_Report_SetText = procedure(Report: AReport; const Value: AString_Type); stdcall;

type
  AUi_ReportWin_New = function: AWindow; stdcall;
  // ReportWinType - ��� ���� ������: 0-TReportForm; 1-SimpleReport
  AUi_ReportWin_NewA = function(ReportWinType: AInteger; const Text: AString_Type): AWindow; stdcall;
  // ReportWinType - ��� ���� ������: 0-TReportForm; 1-SimpleReport
  AUi_ReportWin_NewWS_Proc = function(ReportWinType: AInteger; const Text: AWideString): AWindow; stdcall;

type
  AUi_Splitter_New = function(Parent: AControl; SplitterType: AUISplitterType): AControl; stdcall;

type // --- V02 ---
  // ��������� ������ � ������� TextView
  AUi_TextView_AddLine = function(TextView: AControl; const Text: AWideString): AInteger; stdcall;
  { ������� ����� ������� �������������� ������
    ViewType
      0 - TMemo
      1 - RichEdit }
  AUi_TextView_New = function(Parent: AControl; ViewType: AInteger): AControl; stdcall;
  AUi_TextView_SetFont = procedure(TextView: AControl; const FontName: AWideString; FontSize: AInteger); stdcall;
  AUi_TextView_SetReadOnly = procedure(TextView: AControl; ReadOnly: ABoolean); stdcall;
  { ScrollBars
      0 - ssNone
      1 - ssHorizontal
      2 - ssVertical
      3 - ssBoth }
  AUi_TextView_SetScrollBars = procedure(TextView: AControl; ScrollBars: AInteger); stdcall;
  AUi_TextView_SetWordWrap = procedure(TextView: AControl; Value: ABoolean); stdcall;
type // --- V03 ---
  { ��������� ������ � ������� TextView }
  A_UI_TextView_AddLine = function(TextView: AControl; const Text: AString_Type): AInteger; stdcall;
  { ������� ����� ������� �������������� ������
    ViewType
      0 - TMemo
      1 - RichEdit }
  A_UI_TextView_New = function(Parent: AControl; ViewType: AInteger): AControl; stdcall;
  A_UI_TextView_SetFont = procedure(TextView: AControl; const FontName: AString_Type; FontSize: AInteger); stdcall;
  A_UI_TextView_SetReadOnly = procedure(TextView: AControl; ReadOnly: ABoolean); stdcall;
  { ScrollBars
      0 - ssNone
      1 - ssHorizontal
      2 - ssVertical
      3 - ssBoth }
  A_UI_TextView_SetScrollBars = procedure(TextView: AControl; ScrollBars: AInteger); stdcall;
  A_UI_TextView_SetWordWrap = procedure(TextView: AControl; Value: ABoolean); stdcall;

type
  AUi_ToolBar_AddButton02_Proc = function(ToolBar: AControl; const Name, Text, Hint: AWideString;
      OnClick: ACallbackProc02; ImageID, Weight: AInteger): AButton; stdcall;
  AUi_ToolBar_AddButton03_Proc = function(ToolBar: AControl; const Name, Text, Hint: AString_Type;
      OnClick: ACallbackProc03; ImageID, Weight: AInteger): AButton; stdcall;
  AUi_ToolBar_New_Proc = function(Parent: AControl): AControl; stdcall;

type
  AUi_TrayIcon_GetMenuItems = function(TrayIcon: ATrayIcon): AMenuItem; stdcall; // $IFNDEF UNIX

type
  AUi_TreeView_AddItem = function(TreeView: AControl; Parent: ATreeNode; Text: AWideString): ATreeNode; stdcall;
  A_UI_TreeView_AddItem = function(TreeView: AControl; Parent: ATreeNode; Text: AString_Type): ATreeNode; stdcall;
  AUi_TreeView_New = function(Parent: AControl): AControl; stdcall;

type
  AUi_WaitWin_NewWS_Proc = function(const Caption, Text: AWideString; MaxPosition: Integer): AWindow; stdcall;
  AUi_WaitWin_New_Proc = function(const Caption, Text: AString_Type; MaxPosition: Integer): AWindow; stdcall;
  AUi_WaitWin_StepBy = function(Window: AWindow; Step: AInteger): AInteger; stdcall;

type
  AUi_Window_Free = procedure(Window: AWindow); stdcall;
  AUi_Window_GetMenu = function(Window: AWindow): AMenu; stdcall;
  AUi_Window_LoadConfig = function(Window: AWindow; Config: AConfig): ABoolean; stdcall;
  AUi_Window_LoadConfig2 = function(Window: AWindow; Config: AConfig; const ConfigKey: AWideString): ABoolean; stdcall;
  A_UI_Window_LoadConfig2 = function(Window: AWindow; Config: AConfig; const ConfigKey: AString_Type): ABoolean; stdcall;
  AUi_Window_New = function: AControl; stdcall;
  AUi_Window_SaveConfig = function(Window: AWindow; Config: AConfig): ABoolean; stdcall;
  AUi_Window_SaveConfig2 = function(Window: AWindow; Config: AConfig; const ConfigKey: AWideString): ABoolean; stdcall;
  A_UI_Window_SaveConfig2 = function(Window: AWindow; Config: AConfig; const ConfigKey: AString_Type): ABoolean; stdcall;
    //** ������ ����� ��������� ����.
  AUi_Window_SetBorderStyle02 = procedure(Window: AWindow; BorderStyle: AInteger); stdcall;
    //** ������ ����� ��������� ����.
  AUi_Window_SetBorderStyle03 = function(Window: AWindow; BorderStyle: AInteger): AError; stdcall;
  AUi_Window_SetFormStyle = procedure(Window: AWindow; FormStyle: AInteger); stdcall;
  AUi_Window_SetPosition = procedure(Window: AWindow; Position: AInteger); stdcall;
  AUi_Window_ShowModal = function(Window: AWindow): ABoolean; stdcall;

implementation

end.
 