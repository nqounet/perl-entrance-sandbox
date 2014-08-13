use 5.012001;
use Test::More 0.98;

subtest 'literal reference' => sub {
    my $args1 = \'hoge';
    my $args2 = \'hoge';
    isnt $args1, $args2, q{$args1 isn't $args2};

    my $args3 = $args1;
    is $args1,   $args3, q{$args1 is $args3};
    isnt $args2, $args3, q{$args1 isn't $args3};

    $args1 = \'hoge';
    isnt $args1, $args3, q{$args1 isn't $args3};
};

subtest 'scalar reference' => sub {
    my $args  = 'hoge';
    my $args1 = \$args;
    my $args2 = \$args;
    is $args1, $args2, q{$args1 is $args2};

    my $args3 = $args1;
    is $args1, $args3, q{$args1 is $args3};
    is $args2, $args3, q{$args2 is $args3};

    $args1 = \$args;
    is $args1, $args3, q{$args1 is $args3};
    is \$args, $args1, q{\$arg is $args1};
};

subtest 'literal array reference' => sub {
    my $args  = 'hoge';
    my $args1 = [1, $args, 3];
    my $args2 = [1, $args, 3];
    isnt $args1, $args2, q{$args1 isn't $args2};

    my $args3 = $args1;
    is $args1,   $args3, q{$args1 is $args3};
    isnt $args2, $args3, q{$args2 isn't $args3};

    $args = 'geho';
    is $args1, $args3, q{$args1 is $args3};
};

done_testing;
