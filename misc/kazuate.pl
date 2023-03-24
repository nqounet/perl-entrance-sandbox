#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

my $answer = int rand(100) + 1;
say "$answer";

my $n = 0;
while(1) {
    $n++;
    print "1から100までで数を当ててみて（$n回目） > ";
    my $str = <STDIN>;
    chomp $str;
    # print "$str\n";

    if ( $str == $answer ) {
        if( $n == 1 ){
            print "大当たり！！！\n";
        } else {
            print "OK\n"; # 条件が｢真｣の場合
        }
        exit;
    } elsif (abs($answer-$str) < 5) {
        print "惜しい\n";
    } elsif ($str < $answer) {
        print "答えより小さい\n";
    } else {
        print "答えより大きい\n";
    }
}
