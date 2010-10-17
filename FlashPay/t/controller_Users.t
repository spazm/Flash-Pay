use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'FlashPay' }
BEGIN { use_ok 'FlashPay::Controller::Users' }

ok( request('/users')->is_success, 'Request should succeed' );
done_testing();
