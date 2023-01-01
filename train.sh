#!/bin/bash
wget https://github.com/tawnkramer/gym-donkeycar/releases/download/v22.11.06/DonkeySimLinux.zip

unzip DonkeySimLinux.zip && chmod +x DonkeySimLinux/donkey_sim.x86_64

nohup ./DonkeySimLinux/donkey_sim.x86_64 -batchmode -nographics > /dev/null 2>&1 &

rl_zoo3 train --algo tqc --env donkey-mountain-track-v0