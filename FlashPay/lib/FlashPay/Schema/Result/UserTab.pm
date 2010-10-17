package FlashPay::Schema::Result::UserTab;

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

FlashPay::Schema::Result::UserTab

=cut

__PACKAGE__->table("USER_TAB");

=head1 ACCESSORS

=head2 user_tab_id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0

=head2 item

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 quantity

  data_type: 'integer'
  is_nullable: 0

=head2 purchase_time

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 skucode

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 user_activity_id

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_tab_id",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "item",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "quantity",
  { data_type => "integer", is_nullable => 0 },
  "purchase_time",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "skucode",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "user_activity_id",
  { data_type => "bigint", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("user_tab_id");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-10-17 02:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CA0EAyIKPrwu6kSMOWiPmg


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
