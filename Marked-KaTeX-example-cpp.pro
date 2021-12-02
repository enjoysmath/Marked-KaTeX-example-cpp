QT       += core gui

QT += webenginewidgets webchannel

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
CONFIG -= qtquickcompiler

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    document.cpp \
    main.cpp \
    mainwindow.cpp \
    previewpage.cpp

HEADERS += \
    document.h \
    mainwindow.h \
    previewpage.h

RESOURCES = \
    resources/markdowneditor.qrc

FORMS += \
    mainwindow.ui

DISTFILES += \
    resources/3rdparty/MARKDOWN-LICENSE.txt \
    resources/3rdparty/MARKED-LICENSE.txt

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    markdown.css \
    resources/3rdparty/MAKDOWN-LICENSE.txt \
    resources/3rdparty/MARKED-LICENSE.txt \
    resources/3rdparty/markdown.css \
    resources/3rdparty/marked.js \
    resources/3rdparty/qt_attribution.json \
    resources/default.md \
    resources/index.html
