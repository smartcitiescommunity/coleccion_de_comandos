for USER in /var/spool/cron/*; do echo "--- crontab for $USER ---"; cat "$USER"; done
