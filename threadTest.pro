QT       += core gui svg
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = threadTest
TEMPLATE = app

SOURCES += main.cpp             application.cpp \
    threader.cpp

HEADERS += application.h \
    threader.h

FORMS   += application.ui

RESOURCES += resources.qrc

unix:{
    INCLUDEPATH += /opt/crosscontrol/include

    linux-g++ { # Qt5 x86
       message(Compiling for $$QT_VERSION OS Version - Linux Virtual Machine)
       DEFINES += TARGET_X86
    }

    linux-arm-none-gnueabi-g++ { # Qt5 LinX version iMX5
       message(Compiling for $$QT_VERSION LinX Version - Linux ARM iMX5 CCpilot)
       DEFINES += LINUX
       DEFINES += CCAUX
       DEFINES += TARGET_ARM_IMX5
       LIBS += -lcc-aux2
    }

    linux-oe-g++ { # Qt5 VS/VI2 OS version
       DEFINES += LINUX
       DEFINES += CCAUX
       DEFINES += TARGET_ARM_IMX6
       LIBS += -lcc-aux2
       message(Compiling for $$QT_VERSION OS Version - Linux ARM iMX6 CCpilot)
    }

    linux-imx6-g++ { # Qt5 LinX version VS/VI2
       DEFINES += LINUX
       DEFINES += CCAUX
       DEFINES += TARGET_ARM_IMX6
       LIBS += -lcc-aux2
       message(Compiling for $$QT_VERSION LinX Version - Linux ARM iMX6 CCpilot)
    }

#######################################################
# CrossControl specific libraries
# REMOVE DEPENDENCIES THAT ARE NOT USED
LIBS        += -lqt5cccommon
LIBS        += -lqt5ccverticalmeter
LIBS        += -lqt5cchorizontalmeter
LIBS        += -lqt5ccbottombar
LIBS        += -lqt5cccheckbox
LIBS        += -lqt5ccroundindicator
LIBS        += -lqt5ccsvgbutton
LIBS        += -lqt5ccnotification
LIBS        += -lqt5ccsvgonoffbutton
LIBS        += -lqt5cconoffbutton
LIBS        += -lqt5cctogglebutton
LIBS        += -lqt5ccplusminusbutton
LIBS        += -lqt5ccverticalgauge
LIBS        += -lqt5ccplusminusbuttonvertical
LIBS        += -lqt5ccpopupmenu
LIBS        += -lqt5ccpushbutton
LIBS        += -lqt5ccrectangularindicator
LIBS        += -lqt5ccmultineedlegauge
LIBS        += -lqt5ccroundgauge
LIBS        += -lqt5ccsegmentedgauge
LIBS        += -lqt5ccfillmeter

# To be able to execute the application on a remote device, it must be copied first.
# The following section defines the files that will be copied
target.path = /opt/threadTest/
INSTALLS += target
}

#######################################################
