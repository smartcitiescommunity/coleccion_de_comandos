#http://www.gtlib.gatech.edu/pub/opensuse/distribution/leap/42.1/iso/openSUSE-Leap-42.1-NET-x86_64.iso
#https://en.opensuse.org/SDB:Installing_VMware_server_or_workstation
uname -m
#32 or 64? 32 abort the missión - 64 Just go on!
zypper in gcc kernel-devel make gcc patch kernel-source kernel-syms linux-glibc-devel linux-kernel-headers
https://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-12.5.2-4638234.x86_64.bundle
chmod +x VMware-Workstation-Full-12.5.2-4638234.x86_64.bundle
./VMware-Workstation-Full-12.5.2-4638234.x86_64.bundle
