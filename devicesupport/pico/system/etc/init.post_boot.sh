#!/system/bin/sh

target=`getprop ro.board.platform`

case "$target" in
    "msm8660")
	 echo 50000 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
	 echo 50000 > /sys/devices/system/cpu/cpu1/cpufreq/ondemand/sampling_rate
	 echo 90 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
	 echo 90 > /sys/devices/system/cpu/cpu1/cpufreq/ondemand/up_threshold
	 echo 1 > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
	 echo 4 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/ondemand/sampling_rate
	 echo 384000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
	 echo 384000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
         chown system /sys/devices/system/cpu/cpu0/online
         chown system /sys/devices/system/cpu/cpu1/online
         chown system /sys/power/perflock
        ;;
esac

case "$target" in
    "msm7k")
        echo 90 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
        chown system /sys/power/perflock
        ;;
esac
