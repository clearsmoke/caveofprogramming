#!/usr/bin/env perl 

use strict;
use warnings;
use utf8;

use Data::Dumper;

$|=1;

sub main {

	my $input = 'test.csv';

	unless(open(INPUT, $input)) {
		die "\nCannont open $input\n";
	}
	
	<INPUT>;

#	 It is normally better for your output to go to an ouput file or databse but you can send your output to an Array. When this is done, the output will be stored in the computer memory

	my @lines;

##	my $count = 0;

	while(my $line = <INPUT>) {
	
		chomp $line;

##		print "'$line'\n";
		
		my @values = split /\s*,\s*/, $line;

##	 	print join '|', @values;

##		print Dumper(@values);

##		$lines[$count] = $line;

##		$count++;

#	 	push can be used to replace the count elements

		push @lines, $line;

	}

	close INPUT;

	foreach my $line(@lines) {
		print $line . "\n";
	}
}

main();
