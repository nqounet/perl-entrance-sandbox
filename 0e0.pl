#!/usr/bin/env perl
use utf8;
use 5.012;

say 0e0;
say !0e0;
say !0;
say !!0;
say 0e0 == !!0;
say '0e0 is true' if 0e0;
say '!!0e0 is true' if !!0e0;
say '"0e0" is true' if "0e0";
say '!!"0e0" is true' if !!"0e0";
say '0.0 is true' if 0.0;
say '"0.0" is true' if "0.0";

my @array = ( 1, "hoge", 3 );
for my $i (0 .. $#array) {
  print "$array[$i]\n";
}
for ( my $i = 0,my $len = @array; $i < $len; $i++ ) {
  print "$array[$i]\n";
}