#!/system/bin/sh

if [ -z "`busybox ls -A /data/data/com.android.browser/`" ];then
		/system/bin/log -t factory_default "begain factory default!"
		if [ -e /system/data.tar.bz2 ];then
				busybox tar -jxvf /system/data.tar.bz2 -C /data/
				busybox chmod -R 777 /data
		fi
fi

if [ -z "`busybox ls -A /mnt/sdcard/Android/`" ];then
		/system/bin/log -t factory_default "begain factory default! sdcard0"
		mount -t vfat /dev/block/avnftlg /storage/sdcard0
		if [ -e /system/data2.tar.bz2 ];then
				busybox tar -jxvf /system/data2.tar.bz2 -C /mnt/sdcard/
				busybox chmod -R 777 /storage/sdcard0
				umount /storage/sdcard0
		fi
fi