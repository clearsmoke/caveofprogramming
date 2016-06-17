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
	
	my $output = 'output.txt';
	open(OUTPUT, '>'.$output) or die("Could not open the $output file\n");

	while(my $line = <INPUT>) {
		#print the line if it contains the word 'egg'
		#'/b' performs boundary matching, meaning, the Regular Expression will only match against what is within the boundary/whole word
		##Boundary matching is very useful when you want instances of a whole word, such as egg, without words that contain that word,
		###such as eggplant
		if($line =~ /\begg\b/) {
			$line =~ s/\byou\b/YOU/ig; 
			print OUTPUT $line;
		}
	}
	
	close(INPUT);
	close(OUTPUT);

	close(OUTPUT);
}	

main();

