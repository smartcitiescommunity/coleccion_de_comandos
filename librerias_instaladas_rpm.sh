rpm -qa --qf '%{name}-%{version}-%{release}.%{arch}\n'|egrep 'compat|glibc|gcc|libst|binu'|sort
