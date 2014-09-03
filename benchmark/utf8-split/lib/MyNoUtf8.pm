package MyNoUtf8;

use strict;
use warnings;

sub splitter {
    my $str = shift;
    return split //, $str;
}

sub show {
    my $str = 'テスト';
    return splitter($str);
}

1;
