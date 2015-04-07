# mygrep.pl

opendir(4, "collected") || die "Failed opening.\n";
@files = readdir(4);
closedir 4;
print "@files\n";

for( $index = 2; $index <= $#files; $index++ )
{
	open(5, "collected\\$files[$index]") || die "Cannot open.\n";
	while( $aLine = <5> )
	{
		if( $aLine =~ /@ARGV[0]/ )
		{
			print "$aLine\n";
		}
	}
	close(5);
}