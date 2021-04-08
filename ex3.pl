#!/usr/bin/perl

#ex3

#4.1
sub Exercise4_1 {
	my $x = 2;
	my $times = 3;
	while ($times--) {
		$x = &increment($x);
	}
	print "x: $x\n";
}
sub increment{
	my $incre = $_[0] + 1;
	return $incre;
}


#4.2
sub Exercise4_2 {
	my @nums = (1, -4, -5.67);
	foreach (@nums) {
		print "$_\t";
		$fs = &absolute($_);
		print "$fs\n";
	}
}
sub absolute() {
	return abs($_[0]);
}


#4.3
# sub Exercise4_3 {
# 	print "arr: @_\n";
# 	my $total = SumArray(@_);
# 	print "sum: $total\n";
# }

sub SumArray {
	use List::Util "reduce";
	return reduce{$a + $b} @_;
}


#4.4
sub Exercise4_4 {
	print "arr: @_\n";
	if ( grep{$_ < 0} @_ ) {
		print 'negative number found' . "\n";
	} else {
		print "sum: " . &SumArray(@_) . "\n";
	}
}
sub test_ex4_4 {
	my @arrs = ([1, 2, 3.3],[3, -1, 5]);
	foreach (@arrs) {
		#print "dddd: @$_\n";
		&Exercise4_4(@$_);
	}
}


#4.6
sub Exercise4_6 {
	($x, $y, $a, $b) = @_;
	$diff1 = &DiffCal($x, $y);
	print "diff1: $diff1\n";
	$diff2 = &DiffCal($a, $b);
	print "diff2: $diff2\n";
}
sub DiffCal {
	my ($a, $b) = ($_[0], $_[1]);
	print "diff: $a $b\n";
	return $a - $b;
}


#&Exercise4_1();
#&Exercise4_2();
#&test_ex4_4();
&Exercise4_6(1, 2, 8, 88);





# sub fun4 {
# 	print "fun4: @_\n";
# }


# sub fun {
# 	@f = ([1, 2], [3, 4]);
# 	foreach (@f) {
# 		&fun4(@$_);
# 	}
# }

# &fun();


# $f = [1,2];
# print "fff: @$f\n";