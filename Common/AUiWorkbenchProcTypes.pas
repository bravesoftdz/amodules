{**
@Abstract AUiWorkbench procs
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 30.07.2012
}
unit AUiWorkbenchProcTypes;

interface

uses
  ABase, AUiBase;

type
  { ������� ����� ������� � ������� ���� ���������. ����������:
    0 - ���� ��������� ������, ����� ������������� ����� ������� (���� �������� ������ �������) }
  AUiWorkbench_AddPageWS_Proc = function(const Name, Text: AWideString): AControl; stdcall;
  AUiWorkbench_Fin_Proc = function(): AError; stdcall;
  AUiWorkbench_Init_Proc = function(): AError; stdcall;

implementation

end.

