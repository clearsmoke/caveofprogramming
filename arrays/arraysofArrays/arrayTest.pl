#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: arrayTest.pl
#
#        USAGE: ./arrayTest.pl  
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
#      CREATED: 06/15/2016 08:36:55 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

use Data::Dumper;

my @animals = ('dog', 'cat', 'animals');

my @fruits = ('apple', 'banana', 'orange');

my @values;

## push @values, @animals;
push @values, \@animals;

## push @values, @fruits;
push @values, \@fruits;


print Dumper(@values);
