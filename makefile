#
# Makefile for lerom
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := lerom_magica.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-jars := framework2

# All apks from MIUI
local-miui-removed-apps := 

local-miui-modified-apps := 

include boxapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-pre-zip-misc:
	#cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	#rm -rf $(ZIP_DIR)/system/csc

local-rom-zip := lerom_magica.zip
local-put-to-phone:
	adb shell rm /sdcard/$(local-rom-zip)
	adb push out/$(local-rom-zip) /sdcard/
	adb reboot recovery

local-ota-update:
	rm $(ZIP_DIR)/system/app/SuperMarket.apk
	rm $(ZIP_DIR)/system/app/Gallery2.apk
	
