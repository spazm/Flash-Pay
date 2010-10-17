package FlashPay::Schema::Result::NotificationLog;

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

FlashPay::Schema::Result::NotificationLog

=cut

__PACKAGE__->table("NOTIFICATION_LOG");

=head1 ACCESSORS

=head2 notification_log_id

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

=head2 notification

  data_type: 'varchar'
  is_nullable: 0
  size: 200

=head2 notification_by

  data_type: 'integer'
  is_nullable: 0

=head2 notification_time

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "notification_log_id",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "type",
  { data_type => "integer", is_nullable => 0 },
  "number",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "notification",
  { data_type => "varchar", is_nullable => 0, size => 200 },
  "notification_by",
  { data_type => "integer", is_nullable => 0 },
  "notification_time",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
);
__PACKAGE__->set_primary_key("notification_log_id");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-10-17 02:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mfXHnm/fjDHt1ceSmA4JaQ


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
