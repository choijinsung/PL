# hw1.pl

$fileName = "introduce.pl";
open(5, $fileName) || die "Cannot open $fileName.\n";
while( $aLine = <5> )
{
	@words = split(/ /, $aLine);
	for( $index = 0; $index <= $#words; $index++ )
	{
		print "$words[$index]\n"
	}
}
close(5);