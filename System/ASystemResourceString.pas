{**
@Abstract ASystem resource
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 22.02.2013
}
unit ASystemResourceString;

{define AStdCall}

interface

uses
  ABase,
  AStringMain,
  ASystemProcVars;

// --- ASystem ---

function ASystem_GetResourceString(const Section, Name, Default: AString_Type;
    out Value: AString_Type): AError; {$ifdef AStdCall}stdcall;{$endif}

function ASystem_GetResourceStringP(const Section, Name, Default: APascalString): APascalString;

implementation

// --- ASystem ---

function ASystem_GetResourceString(const Section, Name, Default: AString_Type;
    out Value: AString_Type): AError;
begin
  if not(Assigned(ASystemProcVars.ASystem_GetResourceString)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := ASystemProcVars.ASystem_GetResourceString(Section, Name, Default, Value);
end;

function ASystem_GetResourceStringP(const Section, Name, Default: APascalString): APascalString;
var
  SSection: AString_Type;
  SName: AString_Type;
  SDefault: AString_Type;
  Res: AString_Type;
begin
  AString_SetP(SSection, Section);
  AString_SetP(SName, Name);
  AString_SetP(SDefault, Default);
  AString_Clear(Res);
  if (ASystem_GetResourceString(SSection, SName, SDefault, Res) < 0) then
  begin
    Result := '';
    Exit;
  end;
  Result := AString_ToPascalString(Res);
end;

end.
 