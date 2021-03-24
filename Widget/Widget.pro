#-------------------------------------------------
#
# Project created by QtCreator 2019-08-27T16:03:48
# Qt5-demo 综合代码
#
#-------------------------------------------------

#-------------------------------------------------
#
# Project created by QtCreator 2019-08-31T11:11:15
#
#-------------------------------------------------
#QT       += core gui

#greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets multimedia multimediawidgets


TARGET = Widget
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        mainwindow.cpp \
        threadmousecheck.cpp \
        mywidget.cpp

HEADERS += \
        mainwindow.h \
        threadmousecheck.h \
        mywidget.h


#add libs
INCLUDEPATH += $$PWD/../thirdpart/libqui/include
LIBS += -L$$PWD/../thirdpart/libqui/lib -lQtUi

INCLUDEPATH += $$PWD/../thirdpart/libskin/include
LIBS += -L$$PWD/../thirdpart/libskin/lib -lSkin

#temp file
DESTDIR         = $$PWD/../app_bin
MOC_DIR         = $$PWD/../build/widget
OBJECTS_DIR     = $$PWD/../build/widget

win32 {
    src_dir = $$PWD\\..\\thirdpart\\libqui\\lib\\*.dll
    skin_lib = $$PWD\\..\\thirdpart\\libskin\\lib\\Skin.dll
    dst_dir = $$PWD\\..\\app_bin\\
    # dst_dir 最后的 \\ 是必须的，用来标示 xcopy 到一个文件夹，若不存在，创建之

    # Replace slashes in paths with backslashes for Windows
    src_dir ~= s,/,\\,g
    skin_lib ~= s,/,\\,g
    dst_dir ~= s,/,\\,g

    system(xcopy $$src_dir $$dst_dir /y /e)
    system(xcopy $$skin_lib $$dst_dir /y /e)
}