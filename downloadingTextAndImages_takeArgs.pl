#!/usr/bin/perl

use strict;
use warnings;

use LWP::Simple;


sub main {

    print("Enter the URL you would like to dowlod the HTML code from, prefixing with 'http:// or https://: \n");
    print("Example: 'https:google.com'\n");
    $url = <>;

    print("Enter the file name you would like to save the HTML file as, ommitting and suffixes, such as '.html': \n");
    print("Example: 'google.com'");
    $fileName = <>;

    print("Downloading...\n");
    #print get("http://www.caveofprogramming.com/");
    
    getstore($url, $fileName);
    print("Download fInished\n");    
}

main();
