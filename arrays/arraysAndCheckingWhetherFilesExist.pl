#!/usr/bin/perl 

use strict;
use warnings;

my $Files='/home/jay/sym_perlPractice/CaveOfProgramming';

sub main {

    my @files = (
	$Files .'/taggycows.jpg',
	$Files . '/Perl.gif',
	$Files . '/beautiful_perl_belaws_doc_handler.png',
	$Files . '/snotBoogers.png',
    );

    foreach my $file(@files) {
	if(-f $file) {
	    print("Found file: $file\n");
    }
    else {
	print("File NOT found!!!\n $file\n");
    }

  }

}
main();
