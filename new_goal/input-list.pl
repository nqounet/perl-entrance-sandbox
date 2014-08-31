#!/usr/bin/env perl
use utf8;
use 5.012001;

use DDP {deparse => 1};

my @list = ();

while (my $in = <>) {
    chomp $in;
    if ($in == 1) {
        print '>>> ';
        my $in = <>;
        unshift @list, $in;
    }
    if ($in == 2) {
        print @list;
    }
    if ($in == 9) {
        exit;
    }
}
