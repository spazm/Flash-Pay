package FlashPay::Schema::Result::UserActivity;

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

FlashPay::Schema::Result::UserActivity

=cut

__PACKAGE__->table("USER_ACTIVITY");

=head1 ACCESSORS

=head2 user_activity_id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0

=head2 checkin_time

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 checkout_time

  data_type: 'timestamp'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 user_id

  data_type: 'bigint'
  is_nullable: 0

=head2 business_id

  data_type: 'bigint'
  is_nullable: 0

=head2 checkout_by

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user_activity_id",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "checkin_time",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "checkout_time",
  {
    data_type     => "timestamp",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "user_id",
  { data_type => "bigint", is_nullable => 0 },
  "business_id",
  { data_type => "bigint", is_nullable => 0 },
  "checkout_by",
  { data_type => "integer", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("user_activity_id");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-10-17 02:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ALws2qR04tdWMziIZ5qcNw


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
