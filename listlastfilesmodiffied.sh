find . -type f -printf '%T@ %TY-%Tm-%Td %TH:%TM:%.2TS %p\n' | sort -nr | head -n 5 | cut -f2- -d" "
