#!/usr/bin/env perl 

use strict;
use warnings;
use utf8;

$| = 1;

sub main {
	my $text="The code for this device is GP1234.";

	if($text =~ /(\w{2}\d{4})/) {
		print "The code is: $1\n";
	}
	else {
		print "Machine Code Not Found!";
	}	
}
	


main();


