#!/usr/bin/env perl
use strict;
use warnings;
if ($ENV{'REQUEST_METHOD'} eq 'GET' and $ENV{'PATH_INFO'} eq '/' or $ENV{'PATH_INFO'} eq '') {
    print "Content-Type: text/plain\n\n";
    print "Hello World!\n";
}

for my $key (sort keys %ENV) {
    printf "%20s = %s\n", $key, $ENV{$key};
}
