flac input.wav -f --best --sample-rate 44100 -o example.flac
#curl -F file=@example.flac -H "Content-Type: audio/x-flac; rate=44100" http://www.google.com/speech-api/v1/recognize?lang=en
#curl -X POST \
#--data-binary @'audio/hello (16bit PCM).wav' \
#--header 'Content-Type: audio/l16; rate=16000;' \
#'https://www.google.com/speech-api/v2/recognize?output=json&lang=en-us&key=yourkey'
#http://www.chromium.org/developers/how-tos/api-keys
#https://cloud.google.com/speech/
curl -X POST \
--data-binary @audio/good-morning-google.flac \
--header 'Content-Type: audio/x-flac; rate=44100;' \
'https://www.google.com/speech-api/v2/recognize?output=json&lang=en-us&key=yourkey'
