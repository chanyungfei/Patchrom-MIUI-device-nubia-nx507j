local-zip-file     := stockrom.zip
local-out-zip-file := MIUI_nx507j.zip

# All vendor apks needed
local-phone-apps := PrintSpooler PacProcessor CertInstaller KeyChain \
	Stk qcrilmsgtunnel TimeService UserDictionaryProvider Bluetooth BluetoothMidiService \

local-phone-priv-apps := Shell FusedLocation ProxyHandler ExternalStorageProvider \
	SharedStorageBackup InputDevices CellBroadcastReceiver BackupRestoreConfirmation \

local-density := XXHDPI
local-target-bit := 32

include $(PORT_BUILD)/porting.mk

pre-zip-misc:
