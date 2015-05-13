#!/bin/bash -ex
# Smoothieware backup script
# copy to your SD card and make executable with
# chmod +x backup.sh
#
# run with
# ./backup.sh
# will create backup directory (e.g. bck_2015_03_07_22_49_20)

dir="bck_$( date +"%Y_%m_%d_%H_%M_%S")"
echo "Backing up to $dir"
mkdir $dir
cp config $dir
cp config-override $dir || echo "No config-override"
mv FIRMWARE.CUR $dir || echo "No FIRMWARE.CUR"

echo "Done"
