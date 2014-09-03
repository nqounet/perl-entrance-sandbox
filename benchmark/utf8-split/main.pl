#!/usr/bin/env perl
use Benchmark qw(:all);
use lib 'lib';
use MyUtf8;
use MyNoUtf8;

use DDP {deparse => 1};

my $run;
my $times = 1;
my $opt   = shift || '';

if ($opt eq '--run') {
    $run   = 1;
    $times = -3;
}

sub show {
    p @_;
}

my $result = timethese(
    $times,
    {
        utf8 => sub {
            my @res = MyUtf8::show();
            show(@res) unless $run;
        },
        noutf8 => sub {
            my @res = MyNoUtf8::show();
            show(@res) unless $run;
        },
        utf8_scalar => sub {
            my $res = MyUtf8::show();
            show($res) unless $run;
        },
        noutf8_scalar => sub {
            my $res = MyNoUtf8::show();
            show($res) unless $run;
        },
    }
);

cmpthese($result);
