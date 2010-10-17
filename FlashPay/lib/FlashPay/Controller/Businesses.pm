package FlashPay::Controller::Businesses;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

FlashPay::Controller::Businesses - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched FlashPay::Controller::Businesses in Businesses.');
}


=head2 list
    
Fetch all book objects and pass to books/list.tt2 in stash to be displayed
    
=cut
    
sub list :Local {
    my ($self, $c) = @_;

    # Retrieve all of the book records as book model objects and store in the
    # stash where they can be accessed by the TT template
    # $c->stash(businesses => [$c->model('DB::Businesses')->all]);
    # But, for now, use this code until we create the model later
    $c->stash(businesses => '');

    # Set the TT template to use.  You will almost always want to do this
    # in your action methods (action methods respond to user input in
    # your controllers).
    $c->stash(template => 'businesses/list.tt2');
}


=head1 AUTHOR

andrew,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
