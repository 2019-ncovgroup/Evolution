while(<>){
	chomp;
	if (/^>/){
		while ($seq =~ /a/gi) { $a++ }
                while ($seq =~ /g/gi) { $g++ }
                while ($seq =~ /c/gi) { $c++ }
                while ($seq =~ /t/gi) { $t++ }
		print length($seq), "\t", ($g+$c)/length($seq), "\t", $def, "\n"
			unless length($seq)==0;
		$seq="";
		$a=$g=$c=$t=0;
		$def = $_;
		next;
	}
	$seq .= $_;
}
while ($seq =~ /a/gi) { $a++ }
while ($seq =~ /g/gi) { $g++ }
while ($seq =~ /c/gi) { $c++ }
while ($seq =~ /t/gi) { $t++ }
print length($seq), "\t", ($g+$c)/length($seq), "\t", $def, "\n"
	unless length($seq)==0;
