#!/bin/bash
#pdf2tiff2txt.sh filename.pdf
if [ $# -lt 1 ]; then
        echo "Useage: $0 {file in.pdf}"
        exit
fi
if [ ! -f $1 ];then
        echo "Filename given $1 doesn't exist."
        exit
fi
convert -density 300 $1 -depth 8 $1.tiff
tesseract $1.tiff $1
cat $1.txt | tr '\n' '*'| sed 's/\*\*/^^/g'| sed 's/\*/ /g'| sed 's/\^\^/\n\n/g' > $1.converted.txt
rm $1.tiff
rm $1.txt
