#!/bin/bash
set -e
if [ ! -d /opt/corientrdp ]; then
  mkdir /opt/corientrdp || { echo 'Create folder failed' ; exit 1; }
fi
wget -q https://raw.githubusercontent.com/corientdev/CorientRDP/master/corient-rdp.py -O /opt/corientrdp/corient-rdp.py && \
chmod +x /opt/corientrdp/corient-rdp.py && \
wget -q https://raw.githubusercontent.com/corientdev/CorientRDP/master/corient-rdp.png -O /opt/corientrdp/corient-rdp.png
if [ $? -eq 0 ]; then
  echo "Basic scripts are installed / Updated."
else
  echo "Error in download section"
  exit 1
fi
wget -q https://raw.githubusercontent.com/corientdev/CorientRDP/master/CorientRDP.desktop -O /usr/share/applications/CorientRDP.desktop && \
chmod +x /usr/share/applications/CorientRDP.desktop
if [ $? -eq 0 ]; then
  echo "Icon installed / Updated - CorientRDP"
else
  echo "Error when creating or updateing Icon"
  exit 1
fi
exit 0