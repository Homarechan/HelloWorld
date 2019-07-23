// Hello World in C++-FLTK

#include <FL/Fl.H>
#include <FL/Fl_Window.H>
#include <FL/Fl_Box.H>

int main(int argc, char **argv)
{
    Fl_Window *ventana = new Fl_Window(300, 180);
    ventana->begin();
    Fl_Box *box = new Fl_Box(20, 40, 260, 100, "Hello World!");
    box->labelsize(50);
    ventana->end();
    ventana->show(argc, argv);
    return Fl::run();
}