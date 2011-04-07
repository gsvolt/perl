#!/usr/bin/perl

# Arduino Bridge

my $msg = shift;

# use Device::SerialPort;
# I'm using Win32::SerialPort - should work the same
use Device::SerialPort;
use strict;
use warnings;

my $result;

# Set up the serial port
# 19200, 81N on the USB ftdi driver
my $port = Device::SerialPort->new("/dev/ttyACM0");
# COM4 on my machine
my $port = Device::SerialPort->new("COM4");

$port->databits(8);
$port->baudrate(9600);
$port->parity("none");
$port->stopbits(1);

# Opening serial port causes Arduino to boot - allow time

sleep(2) ;

$port->write("~" . "$msg" . "~");

print "TX: ~$msg~ \n";

$result = "";

until ("" ne $result) {
      $result = $port->lookfor;    # poll until data rcvd
#      sleep 1;                    # uncomment to save CPU
}

print "RX: $result\n";

$port->close(); 
