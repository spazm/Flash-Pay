package FlashPay::Schema::Result::Business;

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

FlashPay::Schema::Result::Business

=cut

__PACKAGE__->table("BUSINESS");

=head1 ACCESSORS

=head2 business_id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 100

=head2 username

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 password

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 signup_date

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 active

  data_type: 'tinyint'
  is_nullable: 0

=head2 deactive_date

  data_type: 'timestamp'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 account_number

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=cut

__PACKAGE__->add_columns(
  "business_id",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 100 },
  "username",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "password",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "signup_date",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "active",
  { data_type => "tinyint", is_nullable => 0 },
  "deactive_date",
  {
    data_type     => "timestamp",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "account_number",
  { data_type => "varchar", is_nullable => 0, size => 10 },
);
__PACKAGE__->set_primary_key("business_id");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-10-17 02:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NWAh+1jmE3t+c8zgTun1bw


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->has_many(
    "user_activity",
    "FlashPay::Schema::Result::UserActivity",
    { "foreign.business_id" => "self.business_id" },
);
__PACKAGE__->many_to_many( users => 'user_activity', 'business');
__PACKAGE__->meta->make_immutable;
1;
