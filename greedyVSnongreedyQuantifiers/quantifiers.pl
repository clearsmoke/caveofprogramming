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
		# if($line =~ /(l+)/) { ## Will match multiple occurences of l such as 'll' together as is in 'llama'
		# if($line =~ /(l)/) { ## This would match just one 'l'
		# if($line =~ /(so*n)/) { ## Using the '*' the expression will match lines with zero or more letter 'o' in between 's' and 'n'
								  ## Asterisk will match zero or more occurences of the preceding character
		# if($line =~ /(s.*n)/) { ## '.' Matches any character, including spaces. As '.' is the preceding character of the '*' this expressions will match any line that begins with an 's' and ends with an 'n'. The '*' will cause the expression to match as much as it can rather than the expression stopping at the first matching scenario in the line; the '*' is Greedy
### Example: se check the Project Gutenberg Web pages for current donation
		  if($line =~ /(s.*?n)/) { ## You can prevent a quantifier from being Greedy by adding a '?' after it, changing it to nonGreedy
### Example: s to the Project Guten
			  print "$1\n";
		}
	}
	
	close(INPUT);
}	

main();

