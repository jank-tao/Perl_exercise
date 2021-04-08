#!/usr/bin/perl

#ex2

#2.1
sub Exercise2_1() {
	my @arr = ('a', 'b', 'c');
	while (@arr) {
		print "$arr[0]";
		shift(@arr);
	}
	print "\n";
}


#2.2
sub Exercise2_2() {
	my @arr = split(' ', $_[0]);
	while(@arr) {
		print "$arr[0]\n";
		shift(@arr);
	}
}


#2.3 swap 2 variables
sub Exercise2_3() {
	my ($x, $y) = (shift, shift);
	print "x: $x y: $y\n";
	($x, $y) = ($y, $x);
	print "x: $x y: $y\n";
}

#2.4
sub Exercise2_4() {
	@arr = (1...5, 11...15);
	print "arr_before: @arr\n";
	shift(@arr);
	$arr[-1] /= 5;
	print "arr_after: @arr\n";
}


#2.5 
sub Exercise2_5() {
	@arr = (1...5, 11...15);
	print "arr_before: @arr\n";
	@arr = map{2 * $_} @arr;
	print "arr_after: @arr\n";
}

#2.6
sub Exercise2_6() {
	@arr = split(' ', $_[0]);
	foreach (@arr) {
		print "arr: $_\n";
	}
}


#2.7
sub Exercise2_7() {
	my @arr = ('Fred', 'Wilma', 'Pebbles');
	print "arr_before: @arr\n";
	($arr[0], $arr[-1]) = ('Barney', 'Betty');
	my $middle = 1;
	my $room = $arr[$middle];
	splice(@arr, 1, 0, 'Bamm-Bamm');
	print "arr_after: @arr\n";
}



my $example = 'I am learning Perl';
#&Exercise2_1();
#&Exercise2_2($example);
#&Exercise2_3('abc', 123);
#&Exercise2_4();
#&Exercise2_5();
#&Exercise2_6($example);
&Exercise2_7();

