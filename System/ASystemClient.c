/*
Author Prof1983 <prof1983@ya.ru>
Created 04.03.2013
*/

#include "ABase.h"
#include "ASystemClientVars.c"

// --- ASystem ---

AError
afunc ASystem_LoadProcs(AModuleGetProc GetProc)
{
	_ASystem_Fin = GetProc("ASystem_Fin");
	_ASystem_GetComments = GetProc("ASystem_GetComments");
	_ASystem_GetCompanyName = GetProc("ASystem_GetCompanyName");
	_ASystem_GetConfig = GetProc("ASystem_GetConfig");
	_ASystem_GetConfigDirectoryPath = GetProc("ASystem_GetConfigDirectoryPath");
	_ASystem_GetDataDirectoryPath = GetProc("ASystem_GetDataDirectoryPath");
	_ASystem_GetCopyright = GetProc("ASystem_GetCopyright");
	_ASystem_GetDataDirectoryPath = GetProc("ASystem_GetDataDirectoryPath");
	_ASystem_GetDescription = GetProc("ASystem_GetDescription");
	_ASystem_GetDirectoryPath = GetProc("ASystem_GetDirectoryPath");
	_ASystem_GetExeName = GetProc("ASystem_GetExeName");
	_ASystem_GetExePath = GetProc("ASystem_GetExePath");
	_ASystem_GetParamStr = GetProc("ASystem_GetParamStr");
	_ASystem_GetProductName = GetProc("ASystem_GetProductName");
	_ASystem_GetProductVersionStr = GetProc("ASystem_GetProductVersionStr");
	_ASystem_GetProgramName = GetProc("ASystem_GetProgramName");
	_ASystem_GetProgramVersionStr = GetProc("ASystem_GetProgramVersionStr");
	_ASystem_GetResourceString = GetProc("ASystem_GetResourceString");
	_ASystem_GetTitle = GetProc("ASystem_GetTitle");
	_ASystem_GetUrl = GetProc("ASystem_GetUrl");
	_ASystem_Init = GetProc("ASystem_Init");
	_ASystem_OnAfterRun_Connect = GetProc("ASystem_OnAfterRun_Connect");
	_ASystem_OnAfterRun_Disconnect = GetProc("ASystem_OnAfterRun_Disconnect");
	_ASystem_OnBeforeRun_Connect = GetProc("ASystem_OnBeforeRun_Connect");
	_ASystem_OnBeforeRun_Disconnect = GetProc("ASystem_OnBeforeRun_Disconnect");
	_ASystem_Prepare = GetProc("ASystem_Prepare");
	_ASystem_PrepareA = GetProc("ASystem_PrepareA");
	_ASystem_ProcessMessages = GetProc("ASystem_ProcessMessages");
	_ASystem_SetConfig = GetProc("ASystem_SetConfig");
	_ASystem_SetDataDirectoryPath = GetProc("ASystem_SetDataDirectoryPath");
	_ASystem_SetOnProcessMessages = GetProc("ASystem_SetOnProcessMessages");
	_ASystem_SetOnShowErrorA = GetProc("ASystem_SetOnShowErrorA");
	_ASystem_SetOnShowMessageA = GetProc("ASystem_SetOnShowMessageA");
	_ASystem_ShellExecute = GetProc("ASystem_ShellExecute");
	_ASystem_ShowError = GetProc("ASystem_ShowError");
	_ASystem_ShowErrorA = GetProc("ASystem_ShowErrorA");
	_ASystem_ShowMessage = GetProc("ASystem_ShowMessage");
	_ASystem_ShowMessageA = GetProc("ASystem_ShowMessageA");
	_ASystem_ShowMessageEx = GetProc("ASystem_ShowMessageEx");
	_ASystem_ShowMessageExA = GetProc("ASystem_ShowMessageExA");
	_ASystem_Shutdown = GetProc("ASystem_Shutdown");

	if (_ASystem_Fin == 0) return -1;
	if (_ASystem_GetComments == 0) return -3;
	if (_ASystem_GetCompanyName == 0) return -4;
	if (_ASystem_GetConfig == 0) return -5;
	if (_ASystem_GetConfigDirectoryPath == 0) return -6;
	if (_ASystem_GetDataDirectoryPath == 0) return -7;
	if (_ASystem_GetCopyright == 0) return -8;
	if (_ASystem_GetDataDirectoryPath == 0) return -9;
	if (_ASystem_GetDescription == 0) return -10;
	if (_ASystem_GetDirectoryPath == 0) return -11;
	if (_ASystem_GetExeName == 0) return -12;
	if (_ASystem_GetExePath == 0) return -13;
	if (_ASystem_GetParamStr == 0) return -14;
	if (_ASystem_GetProductName == 0) return -15;
	if (_ASystem_GetProductVersionStr == 0) return -16;
	if (_ASystem_GetProgramName == 0) return -17;
	if (_ASystem_GetProgramVersionStr == 0) return -18;
	if (_ASystem_GetResourceString == 0) return -19;
	if (_ASystem_GetTitle == 0) return -20;
	if (_ASystem_GetUrl == 0) return -21;
	if (_ASystem_Init == 0) return -22;
	if (_ASystem_OnAfterRun_Connect == 0) return -23;
	if (_ASystem_OnAfterRun_Disconnect == 0) return -24;
	if (_ASystem_OnBeforeRun_Connect == 0) return -25;
	if (_ASystem_OnBeforeRun_Disconnect == 0) return -26;
	if (_ASystem_Prepare == 0) return -27;
	if (_ASystem_PrepareA == 0) return -28;
	if (_ASystem_ProcessMessages == 0) return -29;
	if (_ASystem_SetConfig == 28) return -30;
	if (_ASystem_SetDataDirectoryPath == 0) return -31;
	if (_ASystem_SetOnProcessMessages == 0) return -32;
	if (_ASystem_SetOnShowErrorA == 0) return -33;
	if (_ASystem_SetOnShowMessageA == 0) return -34;
	if (_ASystem_ShellExecute == 0) return -35;
	if (_ASystem_ShowError == 0) return -36;
	if (_ASystem_ShowErrorA == 0) return -37;
	if (_ASystem_ShowMessage == 0) return -38;
	if (_ASystem_ShowMessageA == 0) return -39;
	if (_ASystem_ShowMessageEx == 0) return -40;
	if (_ASystem_ShowMessageExA == 0) return -41;
	if (_ASystem_Shutdown == 0) return -42;

	return 0;
}
