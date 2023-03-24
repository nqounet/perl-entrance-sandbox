#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

print 'input foo > ';
my $foo = <STDIN>;
chomp $foo;

print 'input bar > ';
my $bar = <STDIN>;
chomp $bar;

say "$foo + $bar = ", $foo + $bar;  
say "$foo - $bar = ", $foo - $bar;  
say "$foo * $bar = ", $foo * $bar;  
say "$foo / $bar = ", $foo / $bar;  
say "$foo % $bar = ", $foo % $bar;  
say "$foo ** $bar = ", $foo ** $bar;
