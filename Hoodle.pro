QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += $$PWD/sources/

SOURCES += \
	sources/main.cpp \
	sources/cores/block.cpp \
	sources/cores/framework.cpp \
	sources/cores/hoodle.cpp \
	sources/cores/plank.cpp \
	sources/cores/points.cpp \
	sources/utils/resources.cpp \
	sources/views/mainwindow.cpp \
	sources/views/failurewidget.cpp \
	sources/views/preparewidget.cpp \
	sources/views/scenewidget.cpp \
	sources/views/successwidget.cpp

HEADERS += \
	sources/cores/block.h \
	sources/cores/framework.h \
	sources/cores/hoodle.h \
	sources/cores/plank.h \
	sources/cores/points.h \
	sources/utils/constants.h \
	sources/utils/resources.h \
	sources/views/mainwindow.h \
	sources/views/failurewidget.h \
	sources/views/preparewidget.h \
	sources/views/scenewidget.h \
	sources/views/successwidget.h

FORMS += \
	forms/mainwindow.ui \
	forms/failurewidget.ui \
	forms/preparewidget.ui \
	forms/scenewidget.ui \
	forms/successwidget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
	resources/resources.qrc

RC_ICONS = resources/images/icon.ico
