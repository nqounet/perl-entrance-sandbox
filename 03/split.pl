#!/usr/bin/env perl
use utf8;
use 5.012001;

use DDP {deparse => 1};

my $hashbang = '#!/usr/bin/env perl/////';

my @array = split /\//, $hashbang;

p @array;
