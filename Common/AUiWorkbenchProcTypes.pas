{**
@Abstract AUiWorkbench procs
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 23.04.2013
}
unit AUiWorkbenchProcTypes;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase, AUiBase;

type
  AUiWorkbench_AddPage_Proc = function(const Name, Text: AString_Type): AControl; stdcall;
  {$ifdef ADepr}
  { ������� ����� ������� � ������� ���� ���������. ����������:
    0 - ���� ��������� ������, ����� ������������� ����� ������� (���� �������� ������ �������) }
  AUiWorkbench_AddPageWS_Proc = function(const Name, Text: AWideString): AControl; stdcall;
  {$endif}
  AUiWorkbench_Fin_Proc = function(): AError; stdcall;
  AUiWorkbench_Init_Proc = function(): AError; stdcall;
  AUiWorkbench_SetOnChange_Proc = function(OnChange: ACallbackProc): AError; stdcall;

implementation

end.

