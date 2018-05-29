QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

QT += serialport network

TARGET = gnfc
TEMPLATE = app

SOURCES += main.cpp\
        mainwindow.cpp \
    pn532_extend_cmd.cpp \
    mf1ics50writeblock.cpp \ 
    ewin_beep.cpp
SOURCES += snepClient.cpp \
    snepServer.cpp


HEADERS  += mainwindow.h \
    pn532_extend_cmd.h \
    mf1ics50writeblock.h \ 
    ewin_beep.h
HEADERS += snepClient.h \
    snepServer.h


FORMS    += mainwindow.ui \
    mf1ics50writeblock.ui

!win32{
    LIBS += -lnfc -lfreefare -lllcp -lndef
}

win32 {
    INCLUDEPATH += "C:\libnfc\include" "C:\libfreefare\include\freefare" "C:\libndef\include" "C:\libllcp\include" "D:\repo\nfc\libndef-1.2.0\include"
    LIBS += -L"C:\libnfc\bin" -llibnfc -L"C:\libfreefare\bin" -llibfreefare -L"C:\libndef" -lndef1 -L"C:\libllcp\bin" -llibllcp
    LIBS += -lws2_32
}

