SRC="/source/folder"; TRG="/target/folder/"; tar cf - "$SRC" | pv -s $(du -sb "$SRC" | cut -f1) | tar xf - -C "$TRG"
