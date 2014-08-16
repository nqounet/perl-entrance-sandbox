#!/usr/bin/env perl
use utf8;
use 5.012;

use DDP {deparse => 1};

sub show {
    my $args = shift;
    p $args;
}

my $str = 'string';
show($str);

my @array = (0, 'string');
show(\@array);

my %obj = (key1 => 0, key2 => 'string');
show(\%obj);
