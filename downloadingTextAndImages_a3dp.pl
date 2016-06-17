#!/usr/bin/perl

use strict;
use warnings;

use LWP::Simple;

sub main {
    print("Downloading...\n");
    #print get("http://www.caveofprogramming.com/");
    
    getstore("http://allabout3dprinting.com/", "allabout3dprinting.html");
    print("Download fInished\n");    
}

main();
