#!/bin/bash

rm -rf data/U/*
cp /mnt/c/Users/$USER/AppData/Local/Ankama/Dofus/DofusInvoker.swf data/U/
cp -r /mnt/c/Users/$USER/AppData/Local/Ankama/Dofus/data/common data/U/
cp -r /mnt/c/Users/$USER/AppData/Local/Ankama/Dofus/data/i18n data/U/
cp /mnt/c/Users/$USER/AppData/Local/Ankama/Dofus/VERSION data/U/
src/A1.sh data/U/DofusInvoker.swf data/A/DofusInvoker/
python3.10 src/A2.py data/A/DofusInvoker/scripts/com/ data/A/events.json
rm -rf data/B/entities_json/*
python3.10 src/B1.py data/U/common/ data/B/entities_json/
python3.10 src/C1.py data/U/i18n/ data/C/translations_json/
./devscript/split.sh data/B/entities_json/
rm -rf data/U