#include<windows.h>
__declspec(dllexport) int startNetwork(){return 0;}
BOOL APIENTRY DllMain(HMODULE h,DWORD r,LPVOID l){return TRUE;}
