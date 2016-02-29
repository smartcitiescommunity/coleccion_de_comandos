while true; do nc -z localhost 3333 >|/dev/null || (ssh -NfL 3333:REMOTE_HOST:5432 USER@REMOTE_HOST); sleep 15; done
