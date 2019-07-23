/* Hello World in C for Curses */

#include <curses.h>

main()
{
  initscr();
  addstr("Hello World!\n");
  refresh();
  endwin();
  return 0;
}