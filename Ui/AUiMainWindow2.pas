{**
@Abstract AUiMainWindow
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 22.02.2013
}
unit AUiMainWindow2;

{define AStdCall}

interface

uses
  ABase,
  AStringMain,
  AUiBase,
  AUiProcVars;

// --- AUiMainWindow ---

function AUiMainWindow_AddMenuItem(const ParentItemName, Name, Text: AString_Type;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; {$ifdef AStdCall}stdcall;{$endif}

function AUiMainWindow_AddMenuItemA(ParentItemName, Name, Text: AStr;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem; {$ifdef AStdCall}stdcall;{$endif}

function AUiMainWindow_AddMenuItemP(const ParentItemName, Name, Text: APascalString;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem;

implementation

// --- AUiMainWindow ---

function AUiMainWindow_AddMenuItem(const ParentItemName, Name, Text: AString_Type;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem;
begin
  if not(Assigned(AUiProcVars.AUiMainWindow_AddMenuItem)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiMainWindow_AddMenuItem(ParentItemName, Name, Text, OnClick, ImageId, Weight);
end;

function AUiMainWindow_AddMenuItemA(ParentItemName, Name, Text: AStr;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem;
var
  SParentName: AString_Type;
  SName: AString_Type;
  SText: AString_Type;
begin
  if Assigned(AUiProcVars.AUiMainWindow_AddMenuItemA) then
  begin
    Result := AUiProcVars.AUiMainWindow_AddMenuItemA(ParentItemName, Name, Text, OnClick, ImageId, Weight);
    Exit;
  end;
  AString_SetA(SParentName, ParentItemName);
  AString_SetA(SName, Name);
  AString_SetA(SText, Text);
  Result := AUiMainWindow_AddMenuItem(SParentName, SName, SText, OnClick, ImageId, Weight);
end;

function AUiMainWindow_AddMenuItemP(const ParentItemName, Name, Text: APascalString;
    OnClick: ACallbackProc; ImageId, Weight: AInteger): AMenuItem;
var
  SParentName: AString_Type;
  SName: AString_Type;
  SText: AString_Type;
begin
  AString_SetP(SParentName, ParentItemName);
  AString_SetP(SName, Name);
  AString_SetP(SText, Text);
  Result := AUiMainWindow_AddMenuItem(SParentName, SName, SText, OnClick, ImageId, Weight);
end;

end.
 