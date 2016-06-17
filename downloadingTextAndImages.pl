#!/usr/bin/perl

use strict;
use warnings;

use LWP::Simple;

sub main {
    print("Downloading...\n");
    # print get("http://www.caveofprogramming.com/");
    
    # getstore("http://www.caveofprogramming.com/", "caveOfProgrammingHomePage.html");
    #
    # grab an image from the web
    my $code = getstore('https://caveofprogramming.com/images/taggycows_sm.jpg', "taggycows.jpg");

    if($code == 200) {
	print("Success :)\n");
    }
    else {
	print("FAILED!!!\n");
    }

    print("Download fInished\n");    
}

main();
