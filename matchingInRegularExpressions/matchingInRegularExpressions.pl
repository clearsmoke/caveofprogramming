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

	my $file = '/run/media/jay/jerome#2564241214/Coding/Code/Perl/Practice/perlPractice/readingFilesAndBeginningRegularExpressions/myManJeeves.txt';
	open(INPUT, $file) or die("THE FILE AT:\n $file\n WAS NOT FOUND!!!\n");

	while(my $line = <INPUT>) {
		if($line =~ /(I..a.)(...)/) { #in regular expressions the '.' character is used for wildcarding rather than the '*' character including spaces
			print "First Match: '$1' | Second Match: '$2'\n";
		}
	}
	
	close(INPUT);
}	

main();

