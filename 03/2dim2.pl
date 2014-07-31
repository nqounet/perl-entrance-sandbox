#!/usr/bin/env perl
use utf8;
use 5.010;

use DDP {deparse => 1};

my $args = [[1, 2], [3, 4]];

p $args;

for my $value (@{$args}) {
  p $value;
}

say $args->[1][1];

