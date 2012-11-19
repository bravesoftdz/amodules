{**
@Abstract User Interface client
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 19.11.2012
}
unit AUiModClient;

interface

uses
  ABase, ARuntime, ARuntimeBase,
  AUiBase, AUiProcSet;

// --- AUi ---

function AUi_Boot(): AError;

// ---

function Ui_Boot(): AError; deprecated; // Use AUi_Boot()

{
function Ui_SetProcs(const UiProcs1: AUiProcs_Type): ABoolean;
function Ui_SetProcsP(UiProcs: PUiProcs): ABoolean;
}

implementation

{ Module }

function AUi_Boot(): AError;
var
  Module: AModule_Type;
begin
  {if (ARuntime.Modules_InitByUid(AUI_Uid) < 0) then
  begin
    Result := -2;
    Exit;
  end;}
  if (ARuntime.Modules_GetByUid(AUI_Uid, Module) < 0) then
  begin
    Result := -3;
    Exit;
  end;
  if not(Ui_SetProcsP(Module.Procs)) then
  begin
    Result := -4;
    Exit;
  end;
  Result := 0;
end;

function Ui_Boot(): AError;
begin
  Result := AUi_Boot();
end;

{
Use AUiProcSet.pas
function Ui_SetProcs(const UiProcs1: AUiProcs_Type): Boolean;
begin
  UiProcs := UiProcs1;
  Result := True;
end;

function Ui_SetProcsP(UiProcs: PUiProcs): Boolean;
begin
  if not(Assigned(UiProcs)) then
  begin
    Result := False;
    Exit;
  end;
  Result := Ui_SetProcs(UiProcs^);
end;
}

end.
 