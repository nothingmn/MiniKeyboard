# Define environment variables for paths
QT_PATH ?= /opt/qt5 # Adjust this path according to the environment (use the appropriate Qt installation path)

# Files
PRO_FILE = KEY_PRO.pro
QMAKE_CONF = $(QT_PATH)/mkspecs/win32-g++/qmake.conf
SPEC_PRE_PRF = $(QT_PATH)/mkspecs/features/spec_pre.prf
QDEVICE_PRI = $(QT_PATH)/mkspecs/qdevice.pri

# All target
all:
	# Use tab for indentation
	qmake KEY_PRO.pro
	make

# Clean target
clean:
	# Use tab for indentation
	rm -f Makefile
