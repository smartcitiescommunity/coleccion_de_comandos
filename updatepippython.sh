for i in `pip list -o --format legacy|awk '{print $1}'` ; do pip install --upgrade $i; done
