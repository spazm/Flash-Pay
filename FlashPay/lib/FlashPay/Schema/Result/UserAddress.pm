package FlashPay::Schema::Result::UserAddress;

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

FlashPay::Schema::Result::UserAddress

=cut

__PACKAGE__->table("USER_ADDRESS");

=head1 ACCESSORS

=head2 user_address_id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'integer'
  is_nullable: 0

=head2 address

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 address2

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 city

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 state

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 zipcode

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 user_id

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_address_id",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "address",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "address2",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "city",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "state",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "zipcode",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "user_id",
  { data_type => "bigint", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("user_address_id");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-10-17 02:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lLwt0b19TGunxGsSJaGN8g


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
