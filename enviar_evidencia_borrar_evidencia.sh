'ls -1 *<pattern>* | while read file; do scp $file user@host:/path/; if [[ $? -eq 0 ]]; then rm $file; fi; done'
