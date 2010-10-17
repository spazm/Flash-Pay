package FlashPay::Schema::Result::Businesscontact;

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

FlashPay::Schema::Result::Businesscontact

=cut

__PACKAGE__->table("BUSINESSCONTACT");

=head1 ACCESSORS

=head2 businesscontact_id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'integer'
  is_nullable: 0

=head2 number

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 business_id

  data_type: 'bigint'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "businesscontact_id",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "number",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "business_id",
  { data_type => "bigint", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
);
__PACKAGE__->set_primary_key("businesscontact_id");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-10-17 02:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xT20WANyJ9Xd0rSgPW80+Q


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
