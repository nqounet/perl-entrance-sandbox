#!/usr/bin/env perl
# use utf8;
use 5.012001;

use DDP {deparse => 1};

my @gohan = qw(マクド 学食 らすた コンビニ);

while (my $in = <>) {
    chomp $in;
    if ($in eq 'exit') {
        last;
    }
    if ($in eq 'ごはん') {
        my @copy_gohan = @gohan;
        my @selected;
        push @selected, splice(@copy_gohan, int rand @copy_gohan, 1);
        push @selected, splice(@copy_gohan, int rand @copy_gohan, 1);
        p @selected;
        p @copy_gohan;
        p @gohan;
    }
}
