/* Hello World for C with PresentationManager / OS/2 2.11  */

#define INCL_WIN

#include <os2.h>

int main(void)
{
    HMQ hmq;

    hmq = WinCreateMsgQueue(0, 0);

    WinMessageBox(HWND_DESKTOP, HWND_DESKTOP, (PSZ) "Hello World!",
                  (PSZ) "", 0, MB_OK);

    WinDestroyMsgQueue(hmq);

    return 0;
}