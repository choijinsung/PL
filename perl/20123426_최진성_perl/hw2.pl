# hw2.pl

opendir(4, "collected") || die "Failed opening.\n";
@files = readdir(4);
closedir 4;
print "@files\n";

for( $index = 2; $index <= $#files; $index++ )
{
	open(5, "collected\\$files[$index]") || die "Cannot open.\n";
	$lineCount = 0;
	$wordCount = 0;
	while( $aLine = <5> )
	{
		++$lineCount;
		open(six, ">>all_files.txt");
		print six $aLine;
		close(six);
		
		@words = split(/ /, $aLine);
		for( $i = 0; $i <= $#words; $i++ )
		{
			++$wordCount;
		}
	}
	print "<$files[$index] $lineCount $wordCount> \n";
	close(5);
	
	open(5, "collected\\$files[$index]") || die "Cannot open.\n";
	@allLines = <5>;
	close(5);
}