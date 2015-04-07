open(INPUT, 'test.pl');	# 입력 파일
$outfile = 'out.txt';	# 출력 파일
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
