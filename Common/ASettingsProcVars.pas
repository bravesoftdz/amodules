{**
@Abstract ASettings proc vars
@Author Prof1983 <prof1983@ya.ru>
@Created 03.08.2012
@LastMod 23.04.2013
}
unit ASettingsProcVars;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ASettingsProcTypes;

var
  ASettings_Close: ASettings_Close_Proc;
  ASettings_DeleteKey: ASettings_DeleteKey_Proc;
  ASettings_DeleteKeyA: ASettings_DeleteKeyA_Proc;
  ASettings_DeleteSection: ASettings_DeleteSection_Proc;
  ASettings_DeleteSectionA: ASettings_DeleteSectionA_Proc;
  ASettings_Fin: ASettings_Fin_Proc;
  ASettings_Init: ASettings_Init_Proc;
  ASettings_NewIniConfig: ASettings_NewIniConfig_Proc;
  ASettings_NewIniConfigA: ASettings_NewIniConfigA_Proc;
  ASettings_NewRegConfig: ASettings_NewRegConfig_Proc;
  ASettings_NewRegConfigA: ASettings_NewRegConfigA_Proc;
  //ASettings_NewRegConfig2: ASettings_RegConfig_New2_Proc;
  ASettings_ReadBoolDef: ASettings_ReadBoolDef_Proc;
  ASettings_ReadBoolDefA: ASettings_ReadBoolDefA_Proc;
  ASettings_ReadDateTimeDef: ASettings_ReadDateTimeDef_Proc;
  ASettings_ReadDateTimeDefA: ASettings_ReadDateTimeDefA_Proc;
  ASettings_ReadFloatDef: ASettings_ReadFloatDef_Proc;
  ASettings_ReadFloatDefA: ASettings_ReadFloatDefA_Proc;
  //ASettings_ReadIntegerDef: ASettings_ReadIntegerDef_Proc;
  ASettings_ReadIntDef: ASettings_ReadIntDef_Proc;
  ASettings_ReadIntDefA: ASettings_ReadIntDefA_Proc;
  ASettings_ReadSection: ASettings_ReadSection_Proc;
  ASettings_ReadSectionA: ASettings_ReadSectionA_Proc;
  ASettings_ReadString: ASettings_ReadString_Proc;
  ASettings_ReadStringA: ASettings_ReadStringA_Proc;
  ASettings_ReadStringDef: ASettings_ReadStringDef_Proc;
  ASettings_ReadStringDefA: ASettings_ReadStringDefA_Proc;
  ASettings_WriteBool: ASettings_WriteBool_Proc;
  ASettings_WriteBoolA: ASettings_WriteBoolA_Proc;
  ASettings_WriteDateTime: ASettings_WriteDateTime_Proc;
  ASettings_WriteDateTimeA: ASettings_WriteDateTimeA_Proc;
  ASettings_WriteFloat: ASettings_WriteFloat_Proc;
  ASettings_WriteFloatA: ASettings_WriteFloatA_Proc;
  ASettings_WriteInt: ASettings_WriteInt_Proc;
  ASettings_WriteIntA: ASettings_WriteIntA_Proc;
  //ASettings_WriteInteger: ASettings_WriteInteger_Proc;
  ASettings_WriteString: ASettings_WriteString_Proc;
  ASettings_WriteStringA: ASettings_WriteStringA_Proc;
  {$IFDEF ADepr}
  ASettings_Close02: ASettings_Close02_Proc;
  ASettings_DeleteKey02: ASettings_DeleteKey02_Proc;
  ASettings_DeleteSection02: ASettings_DeleteSection02_Proc;
  ASettings_IniConfig_NewWS: ASettings_IniConfig_NewWS_Proc;
  ASettings_ReadBoolWS: ASettings_ReadBoolWS_Proc;
  ASettings_ReadIntegerWS: ASettings_ReadIntegerWS_Proc;
  ASettings_ReadFloatWS: ASettings_ReadFloatWS_Proc;
  ASettings_ReadSectionWS: ASettings_ReadSectionWS_Proc;
  ASettings_ReadStringWS: ASettings_ReadStringWS_Proc;
  ASettings_ReadDateTimeWS: ASettings_ReadDateTimeWS_Proc;
  ASettings_WriteBoolWS: ASettings_WriteBoolWS_Proc;
  ASettings_WriteIntegerWS: ASettings_WriteIntegerWS_Proc;
  ASettings_WriteFloatWS: ASettings_WriteFloatWS_Proc;
  ASettings_WriteStringWS: ASettings_WriteStringWS_Proc;
  ASettings_WriteDateTimeWS: ASettings_WriteDateTimeWS_Proc;
  {$ENDIF}


implementation

end.
 