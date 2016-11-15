sudo apt-get install gnustep-gui-runtime
say "hello"
say -o ~/Desktop/textaudio.wav -f ~/Documents/HugeDocumentNobodyWantsToRead.txt
sudo apt-get install festival
echo "hello" | festival --tts
echo “Just what do you think you're doing, Dave?” | festival --tts
echo "It's $(date '+%-M') past $(date '+%-l')" | festival --tts
banshee --query-artist | festival --tts && banshee --query-album | festival --tts && banshee --query-title | festival --tts
sudo apt-get install speech-dispatcher
spd-say "hello"
spd-say "$(date)"
sudo apt-get install espeak
espeak "hello"
echo "these are my notes" > text.txt
espeak --stdout -f text.txt > text.wav
paplay text.wav
espeak --stdout "this is a test" | paplay
espeak -ven+f3 -k5 -s150 "I've just picked up a fault in the AE35 unit"
wget -qO – http://espeak.sourceforge.net/add_language.html | espeak -m -s 140 -ven
sudo apt-get install libttspico0 libttspico-utils libttspico-data
say -f stuff.txt
say $(cat stuff.txt)
sudo apt-get install xsel
xsel --clipboard | festival --tts
sudo apt-get install gnome-speech-dectalk gnome-speech-ibmtts gnome-speech-swift libgnome-speech-dev libgnome-speech7
sudo pip install pyttsx
virtualenv –no-site-packages tts
sudo apt-get install python-espeak
#import subprocess
#def say_with_espeak(text, lang="en"):
#    subprocess.call("espeak -v {0} {1}".format(lang, text), shell=True)
#import pyttsx
#engine = pyttsx.init()
#engine.setProperty('rate', 70)#
#
#voices = engine.getProperty('voices')
#for voice in voices:
#    print "Using voice:", repr(voice)
#    engine.setProperty('voice', voice.id)
#    engine.say("Hi there, how's you ?")
#    engine.say("A B C D E F G H I J K L M")
#    engine.say("N O P Q R S T U V W X Y Z")
#    engine.say("0 1 2 3 4 5 6 7 8 9")
#    engine.say("Sunday Monday Tuesday Wednesday Thursday Friday Saturday")
#    engine.say("Violet Indigo Blue Green Yellow Orange Red")
#    engine.say("Apple Banana Cherry Date Guava")
#engine.runAndWait()
