TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        ../lstack.c \
        ../main.c \
        ../sha1.c

HEADERS += \
        ../lstack.h \
        ../sha1.h

unix {
    QMAKE_CFLAGS += -pthread
    QMAKE_LFLAGS += -pthread
    LIBS += -latomic
}
