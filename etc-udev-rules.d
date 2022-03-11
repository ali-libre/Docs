odvr *requires* access to the user-space USB interface. It is recommended
to place "41-odvr.rules" into "/etc/udev/rules.d" or setup your own udev rules
rather than running odvr as root. After changing udev rules, don't forget to
run "udevcontrol reload_rules" and to replugin your DVR.

Again, root privileges are required unless udev is properly setup.  
 ATTRS{idVendor}=="0403",ATTRS{idProduct}=="6001",MODE="0666",GROUP="users"
