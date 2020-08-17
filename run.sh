#!/bin/sh
cd /home/pi/bios_fish/pHat
sudo python3 static-light-fade.py 120 20 255 70 170 &
sleep 40

cd /home/pi/bios_fish/ML-examples/yeah-world/ 
sudo python3 record.py example/red 40

sleep 140

cd /home/pi/bios_fish/pHat
sudo python3 static-light-fade.py 120 20 50 255 50 &
sleep 40

cd /home/pi/bios_fish/ML-examples/yeah-world/ 
sudo python3 record.py example/green 40

sleep 140

cd /home/pi/bios_fish/pHat
sudo python3 static-light-fade.py 120 10 50 50 255 &
sleep 40

cd /home/pi/bios_fish/ML-examples/yeah-world/ 
sudo python3 record.py example/blue 40

sleep 140


cd /home/pi/bios_fish/pHat
sudo python3 static-light-fade.py 120 10 125 125 125 &
sleep 40

cd /home/pi/bios_fish/ML-examples/yeah-world/ 
sudo python3 record.py example/white 40

sleep 140

cd /home/pi/bios_fish/ML-examples/yeah-world/
python3 train.py example/model.h5 example/red example/green example/blue example/white
sudo python3 run.py example/model.h5
