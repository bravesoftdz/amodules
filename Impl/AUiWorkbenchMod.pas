{**
@Abstract AUiWorkbench
@Author Prof1983 <prof1983@ya.ru>
@Created 26.08.2009
@LastMod 06.08.2012
}
unit AUiWorkbenchMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ARuntime, ARuntimeBase, AUi, AUiBase, AUiWorkbench, AUiWorkbenchBase{$IFDEF ADepr}, AUiWorkbenchProcRec{$ENDIF};

function AUiWorkbenchModule_Boot(): AError; stdcall;

function AUiWorkbenchModule_Fin(): AError; stdcall;

function AUiWorkbenchModule_GetProc(ProcName: AStr): Pointer; stdcall;

function AUiWorkbenchModule_Init(): AError; stdcall;

{$IFDEF ADepr}
const
  UiWorkbenchProcs: AUiWorkbenchProcs_Type = (
    AddPageWS: AUiWorkbench_AddPageWS;                          // 00
    Init: AUiWorkbenchModule_Init;                              // 01
    Fin: AUiWorkbenchModule_Fin;                                // 02
    Reserved03: 0;
    Reserved04: 0;
    Reserved05: 0;
    Reserved06: 0;
    Reserved07: 0;
    Reserved08: 0;
    Reserved09: 0;
    Reserved10: 0;
    Reserved11: 0;
    Reserved12: 0;
    Reserved13: 0;
    Reserved14: 0;
    Reserved15: 0;
    );
{$ENDIF}

implementation

const
  AUiWorkbench_Version = $00040000;

const
  Module: AModule_Type = (
    Version: AUiWorkbench_Version;
    Uid: AUiWorkbench_Uid;
    Name: AUiWorkbench_Name;
    Description: nil;
    Init: AUiWorkbenchModule_Init;
    Fin: AUiWorkbenchModule_Fin;
    GetProc: AUiWorkbenchModule_GetProc;
    Procs: {$IFDEF ADepr}Addr(UiWorkbenchProcs){$ELSE}nil{$ENDIF};
    );

var
  FInitialized: Boolean;

// --- AUiWorkbenchModule ---

function AUiWorkbenchModule_Boot(): AError;
begin
  if (ARuntime.Modules_FindByUid(AUIWorkbench_Uid) >= 0) then
  begin
    Result := -2;
    Exit;
  end;

  if (ARuntime.Modules_FindByName(AUIWorkbench_Name) >= 0) then
  begin
    Result := -3;
    Exit;
  end;

  Result := ARuntime.Module_Register(Module);
end;

function AUiWorkbenchModule_Fin(): AError;
begin
  ARuntime.Modules_DeleteByUid(AUIWorkbench_Uid);
  Result := AUiWorkbench_Fin();
end;

function AUiWorkbenchModule_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function AUiWorkbenchModule_Init(): AError;
begin
  if FInitialized then
  begin
    Result := 0;
    Exit;
  end;

  // --- Init request modules ---
  AUi_Boot();

  Result := AUiWorkbench_Init();
end;

end.
