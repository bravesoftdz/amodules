{**
@Abstract AUi TreeView
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 22.02.2013
}
unit AUiTreeView;

interface

uses
  ABase,
  AStringMain,
  AUiBase,
  AUiProcVars;

// --- AUiTreeView ---

function AUiTreeView_AddItem(TreeView: AControl; Parent: ATreeNode;
    const Text: AString_Type): ATreeNode; {$ifdef AStdCall}stdcall;{$endif}

function AUiTreeView_AddItemP(TreeView: AControl; Parent: ATreeNode;
    const Text: APascalString): ATreeNode;

function AUiTreeView_New(Parent: AControl): AControl; {$ifdef AStdCall}stdcall;{$endif}

implementation

// --- AUiTreeView ---

function AUiTreeView_AddItem(TreeView: AControl; Parent: ATreeNode;
    const Text: AString_Type): ATreeNode;
begin
  if not(Assigned(AUiProcVars.AUiTreeView_AddItem)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiTreeView_AddItem(TreeView, Parent, Text);
end;

function AUiTreeView_AddItemP(TreeView: AControl; Parent: ATreeNode;
    const Text: APascalString): ATreeNode;
var
  S: AString_Type;
begin
  AString_SetP(S, Text);
  Result := AUiTreeView_AddItem(TreeView, Parent, S);
end;

function AUiTreeView_New(Parent: AControl): AControl;
begin
  if not(Assigned(AUiProcVars.AUiTreeView_New)) then
  begin
    Result := 0;
    Exit;
  end;
  Result := AUiProcVars.AUiTreeView_New(Parent);
end;

end.
