#!/usr/bin/env perl
use utf8;
use strict;
use warnings;
use feature 'say';
use open qw/:encoding(utf8) :std/;
use Data::Printer {deparse => 1};


sub array {
    my @array = (1, 2, 3);
    return @array;
}

sub empty_array {
    return ();
}

my @array = array() || ();
p @array;

my @empty_array = empty_array() || (1, 2);
p @empty_array;
