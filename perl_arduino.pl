#serial in perl
use Device::SerialPort;
my $port = Device::SerialPort->new("/dev/tty.usbserial");
$port->baudrate(19200);
$port->databits(8);
$port->parity("none");
$port->stopbits(1);

#transmitting in perl
$port->write("whatever");

#receiving from arduino
while(1)
{
 my $char = $port->lookfor();
 if($char){
  print "received char: $char\n";
 }
 $port->lookclear;
 sleep(1);
}
