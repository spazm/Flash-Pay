package FlashPay::Schema::Result::UserContact;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

FlashPay::Schema::Result::UserContact

=cut

__PACKAGE__->table("USER_CONTACT");

=head1 ACCESSORS

=head2 user_contact_id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0

=head2 number

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 type

  data_type: 'integer'
  is_nullable: 0

=head2 user_id

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_contact_id",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "number",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "user_id",
  { data_type => "bigint", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("user_contact_id", "type");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-10-17 02:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:F2NwY+CqgRUfEpjuG6tYbg


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->belongs_to(
    'user',
    'FlashPay::Schema::Result::User',
    'user_id',
    { join_type => 'LEFT OUTER' },
);
__PACKAGE__->meta->make_immutable;
1;
