# hw4.pl

$fileName = "input.txt";
open(5, $fileName) || die "Cannot open $fileName.\n";
while( $aLine = <5> )
{
	$aLine =~ s/(\d+)��\s(\d+)��\s(\d+)��/\<DATE\>$1�� $2�� $3��\<\/DATE\>/g;
	$aLine =~ s/(\d+)��\s(\d+)��/\<TIME\>$1�� $2��\<\/TIME\>/g;
	$aLine =~ s/(\d+)��/\<QUANTITY\>$1��\<\/QUANTITY\>/g;
	$aLine =~ s/(\d+)��/\<QUANTITY\>$1��\<\/QUANTITY\>/g;
	print $aLine;
}
close(5);