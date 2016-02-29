perl  -ne '@a=split(/,/);  $b=0; foreach $r (1..$#a){ $b+=$a[$r] } print "$a[0],$b\n"' -f file.csv
