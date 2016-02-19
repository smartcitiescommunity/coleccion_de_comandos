sudo aptitude -y install iasl && sudo cat /sys/firmware/acpi/tables/DSDT > dsdt.dat && iasl -d dsdt.dat
