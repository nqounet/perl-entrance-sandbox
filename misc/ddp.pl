#!/usr/bin/env perl
use utf8;
use 5.012;

use DDP {deparse => 1};

my $args = {
  vars => [1, 0, 2],
  subs => sub {
    return 1;
  }
};

p $args;
