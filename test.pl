#!/usr/bin/env perl
use utf8;
use 5.012;

use Test::More;

my $num = '42string';

ok($num == 42);
ok($num eq 'string');

done_testing;

