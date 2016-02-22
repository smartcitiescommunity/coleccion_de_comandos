find . -type f|while read f; do mv $f `echo $f |tr '[:upper:]' '[ :lower:]'`; done
