#!/usr/bin/env perl
use utf8;
use 5.012;

use DDP {deparse => 1};

my $args1 = \'hoge';
my $args2 = \'hoge';

if ($args1 eq $args2) {
    print 'true';
}
else {
    print 'false';
}
