/* Hello World in C for Intution (Amiga GUI) */

#include <intuition/intuition.h>

struct IntuitionBase *IntuitionBase = NULL;

struct IntuiText hello_text = {-1, -1, JAM1, 0, 0, NULL, "Hello World!", NULL};
struct IntuiText ok_text = {-1, -1, JAM1, 0, 0, NULL, "Ok", NULL};

void main(void)
{
    IntuitionBase = (struct IntuitionBase *)
        OpenLibrary("intuition.library", 0);
    AutoRequest(NULL, &hello_text, NULL, &ok_text, NULL, NULL, 100, 50);
    CloseLibrary(IntuitionBase);
}