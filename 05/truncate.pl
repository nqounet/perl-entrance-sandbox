#!/usr/bin/env perl
use utf8;
use v5.10;
use open qw/:encoding(utf-8) :std/;

use DDP {deparse => 1};

use Text::Truncate;

my $long_string = "This is a very long string";
print truncstr( $long_string, 10); # => This is...
