#!/usr/bin/env perl 

use strict;
use warnings;
use utf8;

#Turn off output buffering
$|=1;

sub main {
	my $output = '>output.txt';

	open(OUTPUT, $output) or die "Can't create the $output file\n";

	print OUTPUT "Hello\n";

	close(OUTPUT);
	}	

main();

