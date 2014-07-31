#!/usr/bin/env perl
use utf8;
use 5.012;

use Data::Printer;

print %INC;

my @array = ('a' .. 'z');
my $hash  = {@array};

p $hash;
