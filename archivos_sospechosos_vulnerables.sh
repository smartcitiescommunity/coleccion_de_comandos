grep -RPnDskip "(passthru|shell_exec|system|phpinfo|base64_decode|chmod|mkdir|fopen|fclose|readfile) *\(" /var/www/vhosts/*/httpdocs/ >suspicious.txt
