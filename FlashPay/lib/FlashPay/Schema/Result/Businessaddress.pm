package FlashPay::Schema::Result::Businessaddress;

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

FlashPay::Schema::Result::Businessaddress

=cut

__PACKAGE__->table("BUSINESSADDRESS");

=head1 ACCESSORS

=head2 businessaddress_id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'integer'
  is_nullable: 0

=head2 address

  data_type: 'varchar'
  is_nullable: 0
  size: 200

=head2 address2

  data_type: 'bigint'
  is_nullable: 1

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

=head2 business_id

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "businessaddress_id",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "address",
  { data_type => "varchar", is_nullable => 0, size => 200 },
  "address2",
  { data_type => "bigint", is_nullable => 1 },
  "city",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "state",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "zipcode",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "business_id",
  { data_type => "bigint", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("businessaddress_id");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-10-17 02:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:POt141dYGy4HZoTUYps/dA


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
