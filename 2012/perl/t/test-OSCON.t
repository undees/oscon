use strict;
use warnings;

use Test::More tests => 2;
BEGIN { use_ok('OSCON') };

#########################

ok( OSCON::speaking_volume(1, 1) eq 'intelligible', 'the actual session' );
