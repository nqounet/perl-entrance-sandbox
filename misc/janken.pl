#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

my $n = 0;
while (1) {
    $n++;
    my $answer = int rand(3) + 1;
    say "$answer";

    print "1はグー、2はチョキ、3はパー\n";
    print "ジャンケンしましょう（$n回目） > ";
    my $str = <STDIN>;
    chomp $str;

    my $str_label = label($str);
    my $answer_label = label($answer);
    say "あなた: $str_label VS コンピュータ: $answer_label";

    if ($str == $answer) {
        say "あいこ";
    }
    elsif (($str == 1 and $answer == 2)
        or ($str == 2 and $answer == 3)
        or ($str == 3 and $answer == 1)
    ) {
        say "あなたの勝ち";
        exit;
    }
    else {
        say "コンピュータの勝ち";
        exit;
    }
}

sub label {
    my $value = shift;
    if ($value == 1) {
        return "グー";
    }
    elsif ($value == 2) {
        return "チョキ";
    }
    else {
        return "パー";
    }
}