package FlashPay::Schema::Result::Usercreditcard;

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

FlashPay::Schema::Result::Usercreditcard

=cut

__PACKAGE__->table("USERCREDITCARD");

=head1 ACCESSORS

=head2 usercreditcard_id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0

=head2 card_type

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 card_number

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 card_holder_name

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 expiry_month_year

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 user_id

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "usercreditcard_id",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "card_type",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "card_number",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "card_holder_name",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "expiry_month_year",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "user_id",
  { data_type => "bigint", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("usercreditcard_id");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-10-17 02:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lvmsJzSkLfXPiP8GujLDjw


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
