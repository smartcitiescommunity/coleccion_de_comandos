find /PATHNAME -type l | while read nullsymlink ; do wrongpath=$(readlink "$nullsymlink") ; right=$(echo "$wrongpath" | sed s'|OLD_STRING|NEW_STRING|') ; ln -fs "$right" "$nullsymlink" ; done
