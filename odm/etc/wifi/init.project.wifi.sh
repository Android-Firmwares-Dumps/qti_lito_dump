#Sukshata@Wifi.BDF,NA 2021/11/12
#load files to  20801 and 20804 varieants of SM7250
hw_version=`getprop ro.boot.hw_version`
rf_version=`getprop ro.boot.rf_version`

tempstr=`getprop persist.vendor.oem.wifi.chain`

if [ "$hw_version" -eq "34" ] && [ "$rf_version" -eq "14" ]
then
    if [ "$tempstr" -eq "1" ]
    then
        cp /odm/etc/wifi/01wlan0.b3e /mnt/vendor/persist/bdwlan.bin
        cp /odm/etc/wifi/01wlan0.b2e /mnt/vendor/persist/bdwlanu.bin
        echo "copied 01wlan0.b3e and 01wlan0.b2e successfully" > /dev/kmsg
    elif [ "$tempstr" -eq "2" ]
    then
        cp /odm/etc/wifi/01wlan1.b3e /mnt/vendor/persist/bdwlan.bin
        cp /odm/etc/wifi/01wlan1.b2e /mnt/vendor/persist/bdwlanu.bin
        echo "copied 01wlan1.b3e and 01wlan1.b2e successfully" > /dev/kmsg
    else
        cp /odm/etc/wifi/01wlan.b3e /mnt/vendor/persist/bdwlan.bin
        cp /odm/etc/wifi/01wlan.b2e /mnt/vendor/persist/bdwlanu.bin
        echo "copied 01wlan.b3e and 01wlan.b2e successfully" > /dev/kmsg
    fi
else
    if [ "$tempstr" -eq "1" ]
    then
       cp /odm/etc/wifi/01wlan0.b0e /mnt/vendor/persist/bdwlan.bin
       cp /odm/etc/wifi/01wlan0.b1e /mnt/vendor/persist/bdwlanu.bin
       echo "copied 01wlan0.b0e and 01wlan0.b1e successfully" > /dev/kmsg
    elif [ "$tempstr" -eq "2" ]
    then
       cp /odm/etc/wifi/01wlan1.b0e /mnt/vendor/persist/bdwlan.bin
       cp /odm/etc/wifi/01wlan1.b1e /mnt/vendor/persist/bdwlanu.bin
       echo "copied 01wlan1.b0e and 01wlan1.b1e successfully" > /dev/kmsg
    else
       cp /odm/etc/wifi/01wlan.b0e /mnt/vendor/persist/bdwlan.bin
       cp /odm/etc/wifi/01wlan.b1e /mnt/vendor/persist/bdwlanu.bin
       echo "copied 01wlan.b0e and 01wlan.b1e successfully" > /dev/kmsg
    fi
fi

if [ "$rf_version" -eq "13" ]
    then
    if [ "$tempstr" -eq "1" ]
    then
        cp /odm/etc/wifi/01wlan0.b0i /mnt/vendor/persist/bdwlan.bin
        cp /odm/etc/wifi/01wlan0.b1i /mnt/vendor/persist/bdwlanu.bin
        echo "copied 01wlan0.b0i and 01wlan0.b1i successfully" > /dev/kmsg
    elif [ "$tempstr" -eq "2" ]
    then
        cp /odm/etc/wifi/01wlan1.b0i /mnt/vendor/persist/bdwlan.bin
        cp /odm/etc/wifi/01wlan1.b1i /mnt/vendor/persist/bdwlanu.bin
        echo "copied 01wlan0.b0i and 01wlan0.b1i successfully" > /dev/kmsg
    else
        cp /odm/etc/wifi/01wlan.b0i /mnt/vendor/persist/bdwlan.bin
        cp /odm/etc/wifi/01wlan.b1i /mnt/vendor/persist/bdwlanu.bin
        echo "copied 01wlan.b0i and 01wlan.b1i successfully" > /dev/kmsg
    fi
fi
#end

