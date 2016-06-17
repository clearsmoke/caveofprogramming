#!/usr/bin/env perl 
#This script allows the reading of CSV files which contain spaces
use strict;
use warnings;
use utf8;

use Data::Dumper; 

$|=1;

sub main {

	my $input='paymentsWithSpaces.csv';

	unless(open(INPUT, $input)) { # 'unless' executes only if the condition is false. Similar to do this 'or die'
		die "\nCan Not Find $input\n";
	}
	
	<INPUT>; # Places value in $_ but since we dont use $_ in the script the value won't display; in this case, it's removing the file Headers	

##	while(<INPUT>) { #If you don't actually declare something, 'null but really undef in Perl' it is auto-stored in $_
##		print $_;	
	while(my $line = <INPUT>) { # Arrow Brackets '<' and '>' are used to read a record and a record is defined as being a line

		chomp $line; # Prevents new line character from being appended and end of each $line output; see proceeding example. By defailt the record seperator is set to the new line character. Chomp specifically removes the trailing record seperator, which was new line in this case, but chomp can be instructed as to what the seperator is when it is not the new line character.
		
##		my @values=split(',', $line); # Spilt on commas
		my @values= split /\s*,\s*/, $line; # split on this Regex which is eliminating the spaces at the beginning and end of each seperator ','	
##		print join '|', @values; # After splitting by ',' join using the '|', pipe symbol
		print Dumper(@values); # Dumper accepts an arbitrary data structure and returns a String				
#		Example of Dumper Output:
#			$VAR1 = 'Isaac Newton';
#			$VAR2 = '99.10';
#			$VAR3 = '15051999
#			';
#			$VAR1 = 'Albert Einstein';
#			$VAR2 = '13.20';
#			$VAR3 = '11062012
#			';
#			$VAR1 = 'Carl Scheele';
#			$VAR2 = '66.23';
#			$VAR3 = '01012000
#			';
#			$VAR1 = 'Rene Descartes';
#			$VAR2 = '0.57';
#			$VAR3 = '10072033
#			';
#		End Example
#		In Perl, there is a new line character that is not pritned but naturally gets expanded to the last item. This is why the 'comma-semicolon' for each VAR3 is showing on a new line
#		You can prevent this by using 'chomp' on you variable; in this case, we chomp $line
##		print $line;
##		print $values[0] . "\n"; # Will print the first values (column of values) in the array, each on its own line	
#		
#		Example of Chomped $line Dumper Output:
#		$VAR1 = 'Isaac Newton';
#		$VAR2 = '99.10';
#		$VAR3 = '15051999';
#		$VAR1 = 'Albert Einstein';
#		$VAR2 = '13.20';
#		$VAR3 = '11062012';
#		$VAR1 = 'Carl Scheele';
#		$VAR2 = '66.23';
#		$VAR3 = '01012000';
#		$VAR1 = 'Rene Descartes';
#		$VAR2 = '0.57';
#		$VAR3 = '10072033';
#		End Example
	}
	
	close INPUT;
}

main();
