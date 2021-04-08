#!/usr/bin/perl


#1,2
sub Hello() {
	my $str1 = 'Hello WORLD\\PLANET!';
	my $str2 = 'Hello "Universe"';
	print "$str1\n$str2\n";
}


sub test_Hello() {

}


#3
sub PrintCon() {
	my $x = 'ha' x 4;
	my $y = 'ho' x 3;
	print $x . ' ' . $y . ' ' . $x . "\n"; 
}

sub test_PrintCon() {

}

#4,5 two numbers calculate
sub CalTwoNum() {
	while(chomp($line = <STDIN>)) {
		($a, $b) = split(' ', $line);
		$res = $a + $b;
		print "Add:\t$res\n";
		
		$res = $a - $b;
		print "Sub:\t$res\n";

		$res = $a * $b;
		print "Mult:\t$res\n";

		$res = $a / $b;
		print "Div:\t$res\n";
	}
}

sub test_CalTwoNum() {

}

#6
sub CompareString() {
	while(chomp($line = <STDIN>)) {
		my ($x, $y) = split(' ', $line);
		if ($x eq $y) {
			print "Same\n"
		} else {
			print "Not Same\n";
		}
	}
}

sub test_CompareString() {

}

#7,8 
sub PrintFromOneToNum() {
	while(chomp($line = <STDIN>)) {
		my $num = $line;
		print 1...$num;
		print "\n";
		print $num%2 == 0 ? "even\n" : "odd\n";
	}
}


#&Hello();
#&PrintCon();
#&CalTwoNum();
#&CompareString();
#&PrintFromOneToNum();



