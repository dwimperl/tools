use strict;
use warnings;

use Test::More;

use Config;

plan tests => 4;

# check version number
is $], '5.016001', 'correct version number';
is $Config{version}, '5.16.1', 'correct $Config{version}';

# check @INC
diag "DWIMPERL_ROOT '$ENV{DWIMPERL_ROOT}'";
my @inc = grep { $_ ne '.' } @INC;
is scalar(@inc), scalar(@INC)-1, 'there is a . entry in @INC';
is scalar(grep { m{^$ENV{DWIMPERL_ROOT}} } @inc), scalar(@inc), 'prefix in @INC was relocated' or diag explain \@INC;

#diag explain \@INC;
#diag explain \%Config;


