open(INPUT, 'test.pl');	# �Է� ����
$outfile = 'out.txt';	# ��� ����
#open(OUTPUT, ">$outfile");

@textdata = <INPUT>;
foreach $a (@textdata) {
	@words = split(/[ \t\n]/, $a);
	foreach $b (@words) {
		if ($b ne '') {
			print "$b\n";
		}
#		print OUTPUT "$b\n";
	}
}

close(INPUT);
#close(OUTPUT);
