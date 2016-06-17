#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: payments.pl
#
#        USAGE: ./payments.pl  
#
#  DESCRIPTION: reading payment information form a csv file
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Jerome Miller-Whyte
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 05/02/2016 11:05:55 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

$|=1;

sub main {

	my $input='payments.csv';

	unless(open(INPUT, $input)) { # 'unless' executes only if the condition is false. Similar to do this 'or die'
		die "\nCan Not Find $input\n";
	}
	
	<INPUT>; # Places value in $_ but since we dont use $_ in the script the value won't display; in this case, it's removing the file Headers	

##	while(<INPUT>) { #If you don't actually declare something, 'null but really undef in Perl' it is auto-stored in $_
##		print $_;	
	while(my $line = <INPUT>) { # Arrow Brackets '<' and '>' are used to read a record and a record is defined as being a line

		my @values=split(',', $line);

##		print $line;
		print $values[0] . "\n"; # Will print the first values (column of values) in the array, each on its own line	
	
	}
	
	close INPUT;
}

main();
