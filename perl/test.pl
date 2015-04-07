   $unit = 5000;
   $name = "홍길동";
   $qty = 5;
   $price = $unit * $qty;
   print "$name님에게는 $price원의 가격이 책정됩니다.\n";

	@weeks = ("일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일");
	@months = ("January", "February", "March", "April", "May", "June", "July",  
		"August", "September", "October", "November", "December");
	print   "$months[3]  $weeks[5]\n";
	print   @weeks  . "\n";
	print   "@weeks\n";