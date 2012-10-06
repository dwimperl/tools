use strict;
use warnings;

use Test::More;

plan tests => 1;

is $], 5.016001, 'correct version number';
diag explain \@INC;


