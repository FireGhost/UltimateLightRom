#!/bin/sh
/system/bin/cat /sys/EcControl/GyroGain > /tmp/GyroGain
/system/bin/cat /sys/EcControl/GyroGain

if  /system/bin/cmp /tmp/GyroGain /tmp/calibration_wrong; then 
	/system/bin/toolbox dd if=/tmp/calibration_f of=/sys/EcControl/GyroGain
	echo "Done!!"
	exit 1
else
	echo "No need to do!!"
fi

