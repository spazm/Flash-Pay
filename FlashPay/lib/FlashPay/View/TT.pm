package FlashPay::View::TT;

use strict;
use warnings;

use base 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt2',
    render_die => 1,
    INCLUDE_PATH => [
        FlashPay->path_to( 'root', 'src' ),
    ],
);

=head1 NAME

FlashPay::View::TT - TT View for FlashPay

=head1 DESCRIPTION

TT View for FlashPay.

=head1 SEE ALSO

L<FlashPay>

=head1 AUTHOR

andrew,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
