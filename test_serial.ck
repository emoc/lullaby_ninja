// Utiliser SerialIO nécessite chuck > 1.3.2

SerialIO.list() @=> string list[];                  // list of Serial IO

for( int i; i < list.size(); i++ ) {                // print list
    chout <= i <= ": " <= list[i] <= IO.newline();
}


0 => int device;                    // parse first argument as device number
if( me.args() ) me.arg(0) => Std.atoi => device;
if( device >= list.size() ) {
    cherr <= "serial device #" <= device <= " not available\n";
    me.exit();
}

// serial io
SerialIO cereal;
// open device
if( !cereal.open(device, SerialIO.B9600, SerialIO.ASCII) ) {
	chout <= "unable to open serial device '" <= list[device] <= "'\n";
	me.exit();
}

// infinite time-loop
while( true ) {
    cereal.onLine() => now;                          // wait for event
    cereal.getLine() => string line;                 // get line
    if( line$Object != null ) {
        if (line == "1") chout <= "youpla";
        chout <= "line: " <= line <= IO.newline(); // print

    }
}
