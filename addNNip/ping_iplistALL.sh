#!/bin/bash
for i in `$HOME/komodo_script_strobFX/addNNip/iplistALL.txt` ; do ping -c1 $i 2>&1 | tee >> ping-output.txt; done
