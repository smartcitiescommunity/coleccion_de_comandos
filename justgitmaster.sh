git branch | grep -v "master" | sed 's/^[ *]*//' | sed 's/^/git branch -D /' | bash
