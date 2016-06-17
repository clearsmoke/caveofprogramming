#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: readingFiles.pl
#
#        USAGE: ./readingFiles.pl  
#
#  DESCRIPTION: Reading files using regular expressions
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
		#print the line if it contains the word 'egg'
		if($line =~ /egg/) {
			print $line;
		}
	}	
	close(INPUT);
}

main();

