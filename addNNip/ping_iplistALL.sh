#!/bin/bash
for i in `cat iplistALL.txt` ; do ping -c1 $i 2>&1 | tee >> ping-output.txt; done
