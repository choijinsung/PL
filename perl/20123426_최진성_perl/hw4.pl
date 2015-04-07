# hw4.pl

$fileName = "input.txt";
open(5, $fileName) || die "Cannot open $fileName.\n";
while( $aLine = <5> )
{
	$aLine =~ s/(\d+)년\s(\d+)월\s(\d+)일/\<DATE\>$1년 $2월 $3일\<\/DATE\>/g;
	$aLine =~ s/(\d+)시\s(\d+)분/\<TIME\>$1시 $2분\<\/TIME\>/g;
	$aLine =~ s/(\d+)병/\<QUANTITY\>$1병\<\/QUANTITY\>/g;
	$aLine =~ s/(\d+)개/\<QUANTITY\>$1개\<\/QUANTITY\>/g;
	print $aLine;
}
close(5);