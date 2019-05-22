include(../qt-openzwave.pri)

QT += widgets remoteobjects

CONFIG += silent
DEFINES  += remote

LIBS += -L../qt-openzwave/ -lqt-openzwave -lresolv
INCLUDEPATH += ../qt-openzwave

macx {
    QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.14
    ICON = res/ozw_logo.icns
}

win32 {
    RC_ICONS += res/ozw_logo.ico
}
FORMS += \
    mainwindow.ui \
    startup.ui

SOURCES = main.cpp \
    mainwindow.cpp \
    qtozw_itemdelegate.cpp \
    startup.cpp

HEADERS += \
    mainwindow.h \
    qtozw_itemdelegate.h \
    startup.h

DISTFILES +=

RESOURCES += \
    simpleclient.qrc