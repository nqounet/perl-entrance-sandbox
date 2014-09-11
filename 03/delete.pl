#!/usr/bin/env perl
use utf8;
use 5.012001;

use DDP {deparse => 1};

my %hash = (key => 'value', foo => 'bar');

my $value = delete $hash{key};

p %hash;
p $value;

$hash{key} = $value;

while (my ($key, $value) = each %hash) {
    print "$key = $value\n";
}
