#!/usr/bin/env perl
use utf8;
use strict;
use warnings;
use feature 'say';
use open qw/:encoding(utf8) :std/;
use Data::Printer {deparse => 1};

use Digest::SHA qw(sha1_base64);
use File::Temp ();
use Path::Tiny qw(path);

my $path = Path::Tiny->tempfile;
$path->spew(1);

my $digest = sha1_base64("1");
p $digest;

my $sha = Digest::SHA->new;
$sha->addfile($path->stringify);
$digest = $sha->b64digest;
p $digest;

my $content = $path->slurp;

$digest = sha1_base64($content);
p $digest;
