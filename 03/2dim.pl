#!/usr/bin/env perl
use utf8;
use 5.012;

use DDP {deparse => 1};

my $args;
$args->[0][0] = 1;
$args->[0][1] = 2;
$args->[1][0] = 3;
$args->[1][1] = 4;

p $args;

say $args->[1][1];

