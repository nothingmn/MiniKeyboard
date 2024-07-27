# Define environment variables for paths
QT_PATH ?= /opt/qt5 # Adjust this path according to the environment (use the appropriate Qt installation path)

# Files
PRO_FILE = ../KEY_PRO.pro
QMAKE_CONF = $(QT_PATH)/mkspecs/win32-g++/qmake.conf
SPEC_PRE_PRF = $(QT_PATH)/mkspecs/features/spec_pre.prf
QDEVICE_PRI = $(QT_PATH)/mkspecs/qdevice.pri

# All target
all: $(PRO_FILE) $(QMAKE_CONF) $(SPEC_PRE_PRF) $(QDEVICE_PRI)
    # Add your build commands here, for example:
    qmake $(PRO_FILE) -o Makefile
    make

# Clean target
clean:
    # Add clean commands if needed
    rm -f Makefile
