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

=head2 base

Common functionality/logic for Chained responses

=cut

sub base :Chained('/') :PathPart('businesses') :CaptureArgs(0)
{
    my ( $self, $c ) = @_;

    # Store the ResultSet in stash so it's available for other methods
    $c->stash( resultset => $c->model('DB::Business') );

    # Print a message to the debug log
    $c->log->debug('*** INSIDE BASE METHOD ***');
}

# sub url_create :Chained('base') :PathPart('url_create') :Args(3) { ...

=head2 form_create

Display form to collect information for book to create

=cut
                        
sub form_create : Chained('base') : PathPart('form_create') : Args(0)
{
    my ( $self, $c ) = @_;

    # Set the TT template to use
    $c->stash( template => 'businesses/form_create.tt2' );
}

=head2 form_create_do
    
Take information from form and add to database

=cut

sub form_create_do :Chained('base') :PathPart('form_create_do') :Args(0) {
    my ($self, $c) = @_;

    # Retrieve the values from the form
    my $name         = $c->request->params->{name}         || 'N/A';
    my $account_name = $c->request->params->{account_name} || 'N/A';
    my $username     = $c->request->params->{username}     || 'N/A';
    my $password     = $c->request->params->{password}     || 'N/A';

    # Create the book
    my $business = $c->model('DB::Business')->create(
        {   name         => $name,
            account_name => $account_name,
            username     => $username,
            password     => $password,
        }
    );
    # Handle relationship with author
    # $book->add_to_book_authors({author_id => $author_id});
    # Note: Above is a shortcut for this:
    # $book->create_related('book_authors', {author_id => $author_id});

    # Avoid Data::Dumper issue mentioned earlier
    # You can probably omit this
    $Data::Dumper::Useperl = 1;

    # Store new model object in stash and set template
    $c->stash(business     => $business,
              template => 'books/create_done.tt2');
}

=head2 list
    
Fetch all business objects and pass to businesses/list.tt2 in stash to be displayed
    
=cut
    
sub list :Local {
    my ($self, $c) = @_;

    # Retrieve all of the book records as book model objects and store in the
    # stash where they can be accessed by the TT template
    $c->stash(businesses => [$c->model('DB::Business')->all]);

    # Set the TT template to use.  You will almost always want to do this
    # in your action methods (action methods respond to user input in
    # your controllers).
    $c->stash(template => 'businesses/list.tt2');
}


=head1 AUTHOR

andrew

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
