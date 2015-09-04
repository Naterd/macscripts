#!/bin/sh
#Installs printers on all postscript enabled xerox copiers if they arent already installed


/usr/bin/lpstat -p "3rd_Floor_North_Copier" 2> /dev/null

if [ $? -ne 0 ]; then
  lpadmin -p 3rd_Floor_North_Copier -E -v lpd://172.18.6.14 -P "/Library/Printers/PPDs/Contents/Resources/Xerox WC 7545.gz" -D "3rd Floor North" -L "SouthJordan" -o printer-is-shared=false
fi

/usr/bin/lpstat -p "4th_Floor_North_Copier" 2> /dev/null

if [ $? -ne 0 ]; then
  lpadmin -p 4th_Floor_North_Copier -E -v lpd://172.18.6.12 -P "/Library/Printers/PPDs/Contents/Resources/Xerox WC 7545.gz" -D "4th Floor North" -L "SouthJordan" -o printer-is-shared=false
fi

/usr/bin/lpstat -p "4th_Floor_South_Copier" 2> /dev/null

if [ $? -ne 0 ]; then
  lpadmin -p 4th_Floor_South_Copier -E -v lpd://172.18.6.13 -P "/Library/Printers/PPDs/Contents/Resources/Xerox WC 7545.gz" -D "4th Floor South" -L "SouthJordan" -o printer-is-shared=false
fi

/usr/bin/lpstat -p "1st_Floor_Implementation_Copier" 2> /dev/null

if [ $? -ne 0 ]; then
  lpadmin -p 1st_Floor_Implementation_Copier -E -v lpd://172.18.6.39 -P "/Library/Printers/PPDs/Contents/Resources/Xerox WC 7545.gz" -D "1st Floor Implementation" -L "SouthJordan" -o printer-is-shared=false
fi
