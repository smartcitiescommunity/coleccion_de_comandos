#!/bin/bash
LANG=eng #replace with your language code

shopt -s nullglob

for f in *.tif; do
    echo "Running OCR on $f"
    tesseract -psm 1 -l $LANG $f $f pdf
done

echo "Joining files into single PDF..."
pdftk *.pdf cat output ../outdocument.pdf
rm -r -f *.pdf
