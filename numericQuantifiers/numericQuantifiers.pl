#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: readingFiles.pl
#
#        USAGE: ./readingFiles.pl  
#
#  DESCRIPTION: Reading and writing files using regular expressions
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Jerome Miller-Whyte
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 03/05/2016 07:44:19 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

#Turn off output buffering
$|=1;

sub main {
	# '*' will match zero or more of the preceding character; Greedy
	# '+' will match one or more of the preceding character; Greedy
	# '*?' will match zero or more of the preceding character; non-Greedy
	# '+?' will match one or more of the preceding character; non-Greedy
	# '{}' You can place a number within the brackets to specify how many of the preceding character you would like to match
		# Example: {5} will match 5 of the preceding
	# '{,}' Allows you to specify a range of the preceding to match
		# Example: {3,6} will match no less than 3 but no more than 6 of the preceding
	# '{3,} If an upper bound is not specified then you will match from the lower bound upwards; Greedy 


	my $text = 'DE75883';
	my $text2 = 'DE$75883';

##	if($text =~ /(DE\d{5})/) { # to match 'DE' then 5 Digits you can also use '\d\d\d\d\d' but the numeric quantifier is easier and better as you can easily specifty much higher numeric quanitifier while having readable code
##	if($text =~ /(DE\d{3,6})/) { # Will match 'DE' proceeded by no less than 3 but no more than 6 Digits 
##	if($text =~ /(DE\d{3,})/) { # If an upper bound is not specified then you will match from the lower bound upwards; Greedy 
	if($text2 =~ /(DE\$\d{3,})/) { # If you search character has a symbol, such as '$', which has special meaning in perl, you can still add it to your Regular Expression by escaping it with '\' backslashes 
		print "Match: '$1'\n";
	}	
}	

main();

