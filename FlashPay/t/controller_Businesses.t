use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Catalyst::Test', 'FlashPay' }
BEGIN { use_ok 'FlashPay::Controller::Businesses' }

ok( request('/businesses')->is_success, 'Request should succeed' );
done_testing();
