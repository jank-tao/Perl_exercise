#!/usr/bin/perl

#ex4

use v5.10;
use Cwd;
use File::stat;
use File::Copy;

#10.1
sub Exercise10_1 {
	my $dest_path = "/home/jank";
	print "dest_path: $dest_path\n";
	chdir $dest_path or die "cannot chdir to $dest_path: $!";
	print "Current_dir: ", getcwd(), "\n";
	my @dat_files = glob '*.dat';
	print "dat_files: @dat_files\n";
	my $len_datfile = @dat_files;
	print "len_datfile: $len_datfile\n";
}


#10.2 10.3
sub Exercise10_2 {
	#my $current_path = getcwd();
	my $current_path = '/home/jank';
	print "Current_path: ", $current_path, "\n";
	my @all_files = <$current_path/*>;
	foreach $file (@all_files) {
		my $mtime = stat($file)->mtime;
		my $hourFromLast = (time()-$mtime)/(60*60);
		if(-f $file and -M _ > 1) {
			print "this is file: $file\n";
		} elsif(-d _ and -M _ > 1) {
			print "this is dir: $file\n";
		} else {
			#print "what's this? $file\n";
		}
		print "hour from last modify: $hourFromLast hour\n";
	}
}


#10.4
sub Exercise10_4 {
	@nums = (1...20000);
	@nums = sort(@nums);
	#print join(' ', @nums), "\n";
}
sub excute_time {
	$func = $_[0];
	sub wrap {
		$begin_time = time();
		$func->();
		$end_time = time();
		$cost_sec = ($end_time - $begin_time);
		print "cost_sec: $cost_sec s\n";
	}
	return \&wrap;
}



#10.5
sub Exercise10_5 {
	my $pro_path = '/home/jank/tmp';
	print "pro_path: $pro_path\n";
	foreach my $file (<$pro_path/*.txt>) {
		(my $newfile = $file) =~ s/\.txt$/.bak/;
		if (-e $newfile) {
			warn "cant rename $file to $newfile: $newfile exists\n";
		} elsif (rename $file => $newfile) {
			print "rename successfully\n";
		} else {
			warn "rename $file to $newfile failed: $!\n";
		}
	}
}


#10.6
sub Exercise10_6 {
	my $pro_path = '/home/jank/tmp';
	print "pro_path: $pro_path\n";
	my $new_dir_name = 'BAK';
	my $new_dir_path = $pro_path . '/' . $new_dir_name;
	print "new_dir_path: $new_dir_path\n";
	mkdir $new_dir_path, 0755 or warn "Cannot make $new_dir_path: $!";
	foreach my $file (<$pro_path/*.bak>) {
		my $file_name = (split('/', $file))[-1];
		print "file_name: $file_name\n";
		(my $newfile = $file) =~ s/$file_name$/$new_dir_name\/$file_name/;
		if (-e $newfile) {
			warn "cant rename $file to $newfile: $newfile exists\n";
		} elsif (rename $file => $newfile) {
			print "rename successfully\n";
		} else {
			warn "rename $file to $newfile failed: $!\n";
		}
	}
}


#10.7
sub Exercise10_7 {
	my $pro_path = '/home/jank/tmp/BAK';
	print "pro_path: $pro_path\n";
	unlink glob "$pro_path/* $pro_path/.*" or warn "unlink $pro_path files failed: $!\n";
	rmdir $pro_path or warn "rmdir $pro_path failed: $!\n";
}


#10.8
sub Exercise10_8 {
	my $pro_path = '/home/jank/tmp';
	print "pro_path: $pro_path\n";
	my $file_path = $pro_path . '/genes.txt';
	my $file_copy_path = $pro_path . '/genes_copy.txt';
	copy($file_path, $file_copy_path) or warn "cannot copy $file_path: $!\n";
}

#&Exercise10_1();
#&Exercise10_2();
#&excute_time(\&Exercise10_4)->();
#&Exercise10_5();
#&Exercise10_6();
#&Exercise10_7();
&Exercise10_8();