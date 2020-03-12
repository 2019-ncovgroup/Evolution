#!/usr/bin/env perl
open F, $ARGV[1] or die "cannot open $ARGV[1]";

while(<F>){
	chomp;
	if (/^>/){
		unless ($def =~ /$ARGV[0]/) {
			print "$def\n$seq\n" unless length($def) == 0;
		}

		$seq="";
		$def = $_;
		next;
	}
	$seq .= $_;
}

unless ($def =~ /$ARGV[0]/) {
	print "$def\n$seq\n" unless length($def) == 0;
}
