#include<windows.h>
extern"C"{
__declspec(dllexport) int checkHack(){return 0;}
__declspec(dllexport) int checkXray(){return 0;}
}
BOOL APIENTRY DllMain(HMODULE h,DWORD r,LPVOID l){return TRUE;}
