// Hello World in C++ for the Gtk+ toolkit

#include <gtkmm/main.h>
#include <gtkmm/button.h>
#include <gtkmm/window.h>
#include <iostream>

void button_clicked()
{
    std::cout << "Hello, World !" << std::endl;
}

int main(int argc, char *argv[])
{
    Gtk::Main kit(argc, argv);
    Gtk::Window hello_window;
    Gtk::Button hello_button("Hello World");

    hello_window.set_border_width(10);
    hello_window.add(hello_button);
    hello_button.signal_clicked().connect(sigc::ptr_fun(&button_clicked));
    hello_button.show();

    Gtk::Main::run(hello_window);
    return 0;
}