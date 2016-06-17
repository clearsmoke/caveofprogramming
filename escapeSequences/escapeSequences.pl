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
	# '\d' will match any single Digit
	# '\s' will match a any Space, including a Tabbed Space
	# '\S\ will match a single non-Space
	# '\w' will match Alphanumeric including the '_'

	my $text = 'I am 117 years old tomorrow.';
	my $alphaNum = 'Iam117yearsold_tomorrow.';

##	if($text =~ /(\d+)/) { # If you use 'd*' instead of 'd+' the line from $text will NOT be matched as '*' is first looking for zero occurences of a digit while '+' is looking for one or more occurences of a digit 
##	if($text =~ /(am\s\d+)/) { # Here we are matching the word 'am' followed by a Space and then any number of Digits 
##	if($text =~ /(y\S*)/) { # Will match y and then zero or more non-Space characters
##		print "Match: '$1'\n";

	if($alphaNum =~ /(\w*)/) { # Spaces or '.' are not considered Alphanumberic characters
		print "Alphanumeric Match: '$1'\n";
	}	
}	

main();

