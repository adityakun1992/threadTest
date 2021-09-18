#include "application.h"
#include <QtWidgets/QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Application w;

    bool orientationPortrait = false;

    // uncomment this line to remove window frame
    //w.setWindowFlags(Qt::FramelessWindowHint);

    orientationPortrait ? w.setGeometry(0,0,240,320) : w.setGeometry(0,0,320,240);

    w.showFullScreen();
    return a.exec();
}
