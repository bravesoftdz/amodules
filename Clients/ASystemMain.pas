{**
@Abstract ASystem client
@Author Prof1983 <prof1983@ya.ru>
@Created 27.08.2012
@LastMod 16.11.2012
}
unit ASystemMain;

interface

uses
  ABase, ABaseTypes, AStrings, ASystemProcVars;

// --- ASystem ---

function ASystem_GetConfig(): AConfig; stdcall;

function ASystem_GetExePathP(): APascalString; stdcall;

function ASystem_GetExePathWS(): AWideString; stdcall;

function ASystem_GetTitleP(): APascalString; stdcall;

function ASystem_ParamStrWS(Index: AInt): AWideString; stdcall;

function ASystem_ShowMessageExWS(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;

function ASystem_ShowMessageP(const Msg: APascalString): ADialogBoxCommands; stdcall;

implementation

// --- ASystem ---

function ASystem_GetConfig(): AConfig;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetConfig)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetConfig();
end;

function ASystem_GetExePathP(): APascalString;
var
  S: AString_Type;
begin
  S.Str := nil;
  S.Len := 0;
  S.AllocSize := 0;
  S.Code := 0;
  if not(Assigned(ASystemProcVars.ASystem_GetExePath)) then
  begin
    Result := '';
    Exit;
  end;
  if (AString_Clear(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_GetExePath(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function ASystem_GetExePathWS(): AWideString;
var
  S: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetExePath)) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_GetExePath(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToWideString(S);
end;

function ASystem_GetTitleP(): APascalString;
var
  S: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetTitle)) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_GetTitle(S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function ASystem_ParamStrWS(Index: AInt): AWideString;
var
  Res: AString_Type;
begin
  if not(Assigned(ASystemProcVars.ASystem_ParamStr)) then
  begin
    Result := '';
    Exit;
  end;
  if (ASystemProcVars.ASystem_ParamStr(Index, Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToWideString(Res);
end;

function ASystem_ShowMessageExWS(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands;
var
  SText: AString_Type;
  SCaption: AString_Type;
begin
  if (AString_AssignWS(SText, Text) < 0) then
  begin
    Result := -1;
    Exit;
  end;
  if (AString_AssignWS(SCaption, Caption) < 0) then
  begin
    Result := -1;
    Exit;
  end;
  if not(Assigned(ASystemProcVars.ASystem_ShowMessageEx)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowMessageEx(SText, SCaption, Flags)
end;

function ASystem_ShowMessageP(const Msg: APascalString): ADialogBoxCommands;
var
  S: AString_Type;
begin
  if (AString_AssignP(S, Msg) < 0) then
  begin
    Result := -1;
    Exit;
  end;
  if not(Assigned(ASystemProcVars.ASystem_ShowMessage)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_ShowMessage(S)
end;

end.
 