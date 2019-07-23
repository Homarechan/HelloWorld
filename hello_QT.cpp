// Hello World in C++ for the Qt framework

#include <qapplication.h>
#include <qlabel.h>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QLabel l("Hello World!", 0);
    l.setCaption("Test");
    l.setAlignment(Qt::AlignCenter);
    l.resize(300, 200);
    a.setMainWidget(&l);
    l.show();
    return (a.exec());
}