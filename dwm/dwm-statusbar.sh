#!/bin/bash


# 🕒 as an indicator for Date and Time
# 🖪 as an indicator for Memory Usage
# 💻 as an indicator for CPU Usage
# 🔋 as an indicator for Battery
# ⚡ as an indicator for the Battery being charged



function getDate() {
    local date_formatted="$(date +%H:%M)"
    echo -e "🕒 $date_formatted"
}

function getBattery() {
    local kernel_file="/sys/class/power_supply/BAT0/uevent"

    local str_id_psc="POWER_SUPPLY_CAPACITY="
    local str_id_pss="POWER_SUPPLY_STATUS="

    local battery_percentage="$(cat ${kernel_file} | grep ${str_id_psc} | sed s/${str_id_psc}//g)"
    local battery_charging="$(cat ${kernel_file} | grep ${str_id_pss} | sed s/${str_id_pss}//g)"
    battery_charging="$(echo ${battery_charging} | sed s/Discharging//g)"
    battery_charging="$(echo ${battery_charging} | sed s/Charging/⚡/g)"
    
    echo -e "bat ${battery_percentage}% ${battery_charging}"
}

function getWireless() {
    local wifi_quality="$(awk 'NR==3 {print $3}' /proc/net/wireless | sed s/\\.//)"

    # Cover the case that the WiFi is not running
    if [[ -z ${wifi_quality} ]];
    then
        echo -e "WiFi off"
    else
	wifi_quality="$((10 * ${wifi_quality} / 7))"
	echo -e "net ${wifi_quality}%"
    fi
}

function getCPU() {
    local cpu_usage="$(cat /proc/stat | grep cpu | awk 'NR==1 { print (($2+$4)*100)/($2+$4+$5) }')"

    printf "cpu %.0f%%" ${cpu_usage}
}

function getMEM() {
    local mem_usage="$(free | awk 'NR==2 { print 100 * $3 / $2 }')"

    printf "ram %.0f%%" ${mem_usage}
}

function getDisk() {
    local home_usage="$(df | grep home      | awk '{ print $5 }')"
    local root_usage="$(df | grep nvme0n1p2 | awk '{ print $5 }')"

    echo -e "disk r=${root_usage} h=${home_usage}"
}

export DISPLAY=":0"
xsetroot -name " $(getDisk) | $(getCPU) | $(getMEM) | $(getWireless) | $(getBattery) | $(getDate) "

# echo $(getBattery)
