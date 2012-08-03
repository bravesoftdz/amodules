{**
@Abstract ACollections
@Author Prof1983 <prof1983@ya.ru>
@Created 29.08.2011
@LastMod 30.07.2012
}
unit ACollectionsProcTypes;

interface

uses
  ABase, ACollectionsBase;

{ --- Procs --- }

type
  {** ��������� ������ � ������. ���������� ������, �� �������� ��� ������ ���������. }
  A_Collections_StringList_Add_Proc = function(StringList: AStringList;
      const Value: AString_Type): AInteger; stdcall;

  {** ��������� ������ � ������. ���������� ������, �� �������� ��� ������ ���������. }
  A_Collections_StringList_AddA_Proc = function(StringList: AStringList;
      Value: PAnsiChar): AInteger; stdcall;

  {** ��������� ������ � ������. ���������� ������, �� �������� ��� ������ ���������. }
  A_Collections_StringList_AddP_Proc = function(StringList: AStringList;
      const Value: APascalString): AInteger; stdcall;

  {** ������� ��� ��������. }
  A_Collections_StringList_Clear_Proc = function(StringList: AStringList): AError; stdcall;

  {** ���������� ���-�� ��������� � ���������. }
  A_Collections_StringList_Count_Proc = function(StringList: AStringList): AInteger; stdcall;

  {** ������� �� ������ ������, ������������� �� ���������� �������.
      ��������, ����������� �� ��������� ��������� �����, ����� ������������� �������������� �����. }
  A_Collections_StringList_Delete_Proc = function(StringList: AStringList; Index: AInteger): AError; stdcall;

  {** ��������� � ������ ������ �� ���������� �������.
      ��������, ������������ �� ����� �� ������� Index � �����, ��������� ������, ����� ����������
      ����� ��� ������������ �������. }
  A_Collections_StringList_Insert_Proc = function(StringList: AStringList; Index: AInteger;
      Value: AString_Type): AInteger; stdcall;

  {** ��������� � ������ ������ �� ���������� �������.
      ��������, ������������ �� ����� �� ������� Index � �����, ��������� ������, ����� ����������
      ����� ��� ������������ �������. }
  A_Collections_StringList_InsertP_Proc = function(StringList: AStringList; Index: AInteger;
      const Value: APascalString): AError; stdcall;

  {** ������� ���������-������ �����. }
  A_Collections_StringList_New_Proc = function(): AStringList; stdcall;

  {** ������� �� ������ ������, ������������� �� ���������� �������.
      ��������, ����������� �� ��������� ��������� �����, ����� ������������� �������������� �����. }
  A_Collections_StringList_RemoveAt_Proc = function(StringList: AStringList;
      Index: AInteger): AInteger; stdcall;

  {** Initialize }
  A_Collections_Init_Proc = function(): AError; stdcall;

  {** Finalize }
  A_Collections_Fin_Proc = function(): AError; stdcall;

implementation

end.
 