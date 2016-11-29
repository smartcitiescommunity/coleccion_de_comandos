socat TCP-LISTEN:8000,crlf SYSTEM:"echo HTTP/1.0 200; echo Content-Type\: text/plain; echo; date"
