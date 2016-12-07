// stdafx.cpp : source file that includes just the standard includes
//	fkn.pch will be the pre-compiled header
//	stdafx.obj will contain the pre-compiled type information

#include "stdafx.h"

int MsgBox(PSTR sz,...)
{ 
    CString ach;
	va_list args; 
	va_start(args, sz); 
    ach.FormatV(sz, args);
    return AfxMessageBox(ach);
}