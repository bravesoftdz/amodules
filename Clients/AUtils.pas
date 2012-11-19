{**
@Abstract AUtils
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 19.11.2012
}
unit AUtils;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ARuntime, ARuntimeBase, AStrings, AUtilsBase, AUtilsProcVars;

// --- AString ---

function AString_ToUpper(const S: AString_Type; out Res: AString_Type): AInteger; stdcall;

function AString_ToUpperP(const S: APascalString): APascalString; stdcall;

function AString_ToUpperWS(const S: AWideString): AWideString; stdcall;

// --- AUtils ---

function AUtils_ExtractFileExtWS(const FileName: AWideString): AWideString; stdcall;

function AUtils_ExtractFilePathP(const FileName: APascalString): APascalString; stdcall;

function AUtils_FileExists(const FileName: AString_Type): ABoolean; stdcall;

function AUtils_FileExistsWS(const FileName: AWideString): ABoolean; stdcall;

function AUtils_IntToStr(Value: AInt; out Res: AString_Type): AError; stdcall;

function AUtils_IntToStrP(Value: AInt): APascalString; stdcall;

function AUtils_IntToStrWS(Value: AInt): AWideString; stdcall;

function AUtils_ReplaceCommaWS(const S: AWideString; DecimalSeparator: AChar = #0;
    ClearSpace: ABoolean = True): AWideString; stdcall;

function AUtils_StrToFloatDefWS(const S: AWideString; DefValue: AFloat): AFloat; stdcall;

function AUtils_StrToIntDefWS(const S: AWideString; DefValue: AInt): AInt; stdcall;

function AUtils_Trim(var S: AString_Type): AError; stdcall;

function AUtils_TrimWS(const S: AWideString): AWideString; stdcall;

// ----

function ExtractFileExtWS(const FileName: AWideString): AWideString; stdcall;

function FileExistsWS(const FileName: AWideString): ABoolean; stdcall;

function GetNowDateTime(): TDateTime; stdcall;

function IntToStrWS(Value: AInt): AWideString; stdcall;

function ReplaceCommaWS(const S: AWideString; DecimalSeparator: AChar = #0;
    ClearSpace: ABoolean = True): AWideString; stdcall;

{** ������� ��������� ���-�� ����������� }
function Sleep(Milliseconds: AUInt): AError; stdcall;

function StrToFloatDefWS(const S: AWideString; DefValue: AFloat): AFloat; stdcall;

function StrToFloatWS(const S: AWideString): AFloat; stdcall;

function StrToIntDefWS(const S: AWideString; DefValue: AInt): AInt; stdcall;

function StrToIntWS(const S: AWideString): AInt; stdcall;

function TrimWS(const S: AWideString): AWideString; stdcall;

// --- String ---

function String_ToUpperWS(const S: AWideString): AWideString; stdcall; deprecated; // Use AString_ToUpperWS()

implementation

// --- AString ---

function AString_ToUpper(const S: AString_Type; out Res: AString_Type): AInteger;
begin
  if not(Assigned(AUtilsProcVars.AUtils_UpperString)) then
  begin
    Result := -1;
    Exit;
  end;
  if (AString_Assign(Res, S) < 0) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_UpperString(Res);
end;

function AString_ToUpperP(const S: APascalString): APascalString;
var
  Str: AString_Type;
  Res: AString_Type;
begin
  if (AString_AssignP(Str, S) < 0) then
  begin
    Result := S;
    Exit;
  end;
  if (AString_ToUpper(Str, Res) < 0) then
  begin
    Result := S;
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

function AString_ToUpperWS(const S: AWideString): AWideString;
var
  Str: AString_Type;
  Res: AString_Type;
begin
  if (AString_AssignWS(Str, S) < 0) then
  begin
    Result := S;
    Exit;
  end;
  if (AString_ToUpper(Str, Res) < 0) then
  begin
    Result := S;
    Exit;
  end;
  Result := AString_ToWideString(Res);
end;

// --- AUtils ---

function AUtils_ExtractFileExtWS(const FileName: AWideString): AWideString;
var
  FN: AString_Type;
  Res: AString_Type;
begin
  if not(Assigned(AUtilsProcVars.AUtils_ExtractFileExt)) and not(Assigned(AUtilsProcVars.AUtils_ExtractFileExtWS)) then
  begin
    Result := '';
    Exit;
  end;
  if Assigned(AUtilsProcVars.AUtils_ExtractFileExt) then
  begin
    if (AString_AssignWS(FN, FileName) < 0) then
    begin
      Result := '';
      Exit;
    end;
    if (AString_Clear(Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    if (AUtils_ExtractFileExt(FN, Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    Result := AString_ToWideString(Res);
    Exit;
  end;
  {$IFDEF ADepr}
  if Assigned(AUtilsProcVars.AUtils_ExtractFileExtWS) then
  begin
    try
      Result := AUtilsProcVars.AUtils_ExtractFileExtWS(FileName);
    except
      Result := '';
    end;
    Exit;
  end;
  Result := '';
  {$ENDIF}
end;

function AUtils_ExtractFilePathP(const FileName: APascalString): APascalString;
var
  FN: AString_Type;
  Res: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_ExtractFilePath) then
  begin
    if (AString_AssignP(FN, FileName) < 0) then
    begin
      Result := '';
      Exit;
    end;
    if (AString_Clear(Res) < 0) then
    begin
      Result := '';
      Exit;
    end;
    if (AUtilsProcVars.AUtils_ExtractFilePath(FN, Res) >= 0) then
    begin
      Result := '';
      Exit;
    end;
    Result := AString_ToPascalString(Res);
    Exit;
  end;
  {$IFDEF ADepr}
  if Assigned(AUtilsProcVars.AUtils_ExtractFilePathWS) then
  begin
    try
      Result := AUtilsProcVars.AUtils_ExtractFilePathWS(FileName);
    except
      Result := '';
    end;
    Exit;
  end;
  Result := '';
  {$ENDIF}
end;

function AUtils_FileExists(const FileName: AString_Type): ABoolean;
begin
  if not(Assigned(AUtilsProcVars.AUtils_FileExists)) then
  begin
    Result := False;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_FileExists(FileName);
end;

function AUtils_FileExistsWS(const FileName: AWideString): ABoolean;
var
  S: AString_Type;
begin
  if (AString_AssignWS(S, FileName) < 0) then
  begin
    Result := False;
    Exit;
  end;
  Result := AUtils_FileExists(S);
end;

function AUtils_IntToStr(Value: AInt; out Res: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_IntToStr)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_IntToStr(Value, Res);
end;

function AUtils_IntToStrP(Value: AInt): APascalString;
var
  S: AString_Type;
begin
  if (AUtils_IntToStr(Value, S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(S);
end;

function AUtils_IntToStrWS(Value: AInt): AWideString;
var
  S: AString_Type;
begin
  if (AUtils_IntToStr(Value, S) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToWideString(S);
end;

function AUtils_ReplaceCommaWS(const S: AWideString; DecimalSeparator: AChar;
    ClearSpace: ABoolean): AWideString;
var
  S1: AString_Type;
  Res: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_ReplaceComma) then
  begin
    if (AString_AssignWS(S1, S) < 0) then
    begin
      Result := S;
      Exit;
    end;
    if (AString_Clear(Res) < 0) then
    begin
      Result := S;
      Exit;
    end;
    if (AUtilsProcVars.AUtils_ReplaceComma(S1, DecimalSeparator, ClearSpace, Res) >= 0) then
    begin
      Result := AString_ToWideString(Res);
      Exit;
    end;
  end;
  {$IFDEF ADepr}
  if Assigned(AUtilsProcVars.AUtils_ReplaceCommaWS) then
  begin
    try
      Result := AUtilsProcVars.AUtils_ReplaceCommaWS(S, DecimalSeparator, ClearSpace);
    except
      Result := S;
    end;
  end;
  {$ENDIF}
  Result := S;
end;

function AUtils_StrToFloatDefWS(const S: AWideString; DefValue: AFloat): AFloat;
var
  S1: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_StrToFloatDef) then
  begin
    if (AString_AssignWS(S1, S) < 0) then
    begin
      Result := DefValue;
      Exit;
    end;
    Result := AUtilsProcVars.AUtils_StrToFloatDef(S1, DefValue);
    Exit;
  end;
  if Assigned(AUtilsProcVars.AUtils_StrToFloatDefWS) then
  begin
    Result := AUtilsProcVars.AUtils_StrToFloatDefWS(S, DefValue);
    Exit;
  end;
  Result := DefValue;
end;

function AUtils_StrToIntDefWS(const S: AWideString; DefValue: AInt): AInt;
var
  S1: AString_Type;
begin
  if Assigned(AUtilsProcVars.AUtils_StrToIntDef) then
  begin
    if (AString_AssignWS(S1, S) < 0) then
    begin
      Result := DefValue;
      Exit;
    end;
    Result := AUtilsProcVars.AUtils_StrToIntDef(S1, DefValue);
    Exit;
  end;
  {$IFDEF ADepr}
  if Assigned(AUtilsProcVars.AUtils_StrToIntDefWS) then
  begin
    Result := AUtilsProcVars.AUtils_StrToIntDefWS(S, DefValue);
    Exit;
  end;
  {$ENDIF}
  Result := DefValue;
end;

function AUtils_Trim(var S: AString_Type): AError;
begin
  if not(Assigned(AUtilsProcVars.AUtils_Trim)) then
  begin
    Result := -1;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_Trim(S);
end;

function AUtils_TrimWS(const S: AWideString): AWideString;
var
  Str: AString_Type;
begin
  if (AString_AssignWS(Str, S) < 0) then
  begin
    Result := S;
    Exit;
  end;
  if (AUtils_Trim(Str) < 0) then
  begin
    Result := S;
    Exit;
  end;
  Result := AString_ToWideString(Str);
end;

// --- Public ---

function ExtractFileExtWS(const FileName: AWideString): AWideString;
begin
  Result := AUtils_ExtractFileExtWS(FileName);
end;

function FileExistsWS(const FileName: AWideString): ABoolean;
begin
  Result := AUtils_FileExistsWS(FileName);
end;

function GetNowDateTime(): TDateTime;
begin
  if not(Assigned(AUtilsProcVars.AUtils_Time_Now)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUtilsProcVars.AUtils_Time_Now();
end;

function IntToStrWS(Value: AInt): AWideString;
begin
  Result := AUtils_IntToStrWS(Value);
end;

function ReplaceCommaWS(const S: AWideString; DecimalSeparator: AChar;
    ClearSpace: ABoolean): AWideString;
begin
  Result := AUtils_ReplaceCommaWS(S, DecimalSeparator, ClearSpace);
end;

function Sleep(Milliseconds: AUInt): AError;
begin
  if not(Assigned(AUtils_Sleep)) then
  begin
    Result := -2;
    Exit;
  end;
  try
    AUtils_Sleep(Milliseconds);
    Result := 0;
  except
    Result := -1;
  end
end;

function StrToFloatDefWS(const S: AWideString; DefValue: AFloat): AFloat;
begin
  Result := AUtils_StrToFloatDefWS(S, DefValue);
end;

function StrToFloatWS(const S: AWideString): AFloat;
begin
  Result := AUtils_StrToFloatDefWS(S, 0);
end;

function StrToIntDefWS(const S: AWideString; DefValue: AInt): AInt;
begin
  Result := AUtils_StrToIntDefWS(S, DefValue);
end;

function StrToIntWS(const S: AWideString): AInt;
begin
  Result := AUtils_StrToIntDefWS(S, 0);
end;

function TrimWS(const S: AWideString): AWideString;
begin
  Result := AUtils_TrimWS(S);
end;

// --- String ---

function String_ToUpperWS(const S: AWideString): AWideString;
begin
  Result := AString_ToUpperWS(S);
end;

end.
 