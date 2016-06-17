#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: helloworld.pl
#
#        USAGE: ./helloworld.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 04/27/2016 02:01:35 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

$| = 1;

sub main {
	my @emailList = ('jerome@jerome.com',
					 'cookiemonster@sesame.school',
					 'hulk@everythinggreen.world',
					 'brokenemail$.oops',);

	for  my $email(@emailList) {
		if($email =~ /\w+\@\w+\.\w+/) {
			print "Valid email addresses include: $email\n";
		}
		else { 
			print "Non-Valid email addresses include : $email\n";
		}
	}	
}

main();


