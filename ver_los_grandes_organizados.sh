du --max-depth=1 | sort -r -n | awk '{split("k m g",v); s=1; while($1>1024){$1/=1024; s++} print int($1)" "v[s]"\t"$2}'
