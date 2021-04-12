#!/usr/bin/perl


#11.1
sub Exercise_11_1 {
	system 'ls -l $HOME';
}


#11.2
sub Exercise_11_2 {
	my $num = int(rand(100)) + 1;
	print "num: $num\n";
}


#11.3
sub Exercise_11_3 {
	print join("\n", 1...11);
}


#11.4
sub Exercise_11_4 {
	my @arr = ("a", "bullshit", "pig", "word", "computer");
	my $word_len = 4;
	my @words4 = grep { length($_) >= $word_len } @arr;
	print join("\n", @words4);
	print "\n";
	return @words4;
}


#11.5
sub Exercise_11_5 {
	my @arr = &Exercise_11_4();
	my @arr_upper = map { "\U$_" } @arr;
	print join("\n", @arr_upper);
	print "\n";
}


#11.5
sub Exercise_11_6 {
	my $head_len = $_[0];
	my @arr = &getArr();
	my $arr_len = @arr;
	my @new_arr = $head_len > $arr_len ? @arr : @arr[0...$head_len-1];
	print join("\n", @new_arr) . "\n";
	return @new_arr;

}
sub getArr() {
	return (4, 6, 3, 8, 9);
}


#11.7
# sub Exercise_11_7 {
# 	@arr1 = qw / apple banana cat /;
# 	@arr2 = qw / banana dog cat pig /;
# 	@arr = (@arr1 ~~ @arr2);
# 	print @arr;
# }


sub Exercise_11_7 {
	my @arr1 = qw/ apple banana cat /;
 	my @arr2 = qw/ banana dog cat pig /;
 	my %dt = ();
 	map { $dt{$_}=1 } @arr1;
 	foreach $wd (@arr2) {
 		if (exists $dt{$wd}) {
 			print $wd . "\n";
 		}
 	}
}


#&Exercise_11_1();
#&Exercise_11_2();
#&Exercise_11_3();
#&Exercise_11_4();
#&Exercise_11_5();
#&Exercise_11_6(3);
&Exercise_11_7();
