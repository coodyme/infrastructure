#!/bin/bash
#Author: Augusto Brito

package="libraspberrypi-bin"
package_installed=$(dpkg-query -W -f='${Status} ${Version}\n' "$package" | grep "install ok installed")

if [ "" = "$package_installed" ]; then
    echo "Installing required package..."
    sudo apt-get install "$package"
fi

cpu=$(</sys/class/thermal/thermal_zone0/temp)
gpu=$(sudo vcgencmd measure_temp)

echo "-------------------------------------"
echo "GPU and CPU Temperature"
echo "$(date) @ $(hostname)"
echo "-------------------------------------"

echo "CPU: temp=$((cpu/1000))'C"
echo "GPU: $gpu"