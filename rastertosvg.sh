f=correlation.png; s=400; t=50; a=1.2; convert $f -resize ${s}% -threshold ${t}% bmp:- |  potrace -o ${f%.*}.svg -b svg -z black --fillcolor "#FFFFFF" --alphamax ${a}
