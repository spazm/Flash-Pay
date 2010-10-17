package FlashPay::Schema::Result::UserSetting;

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

FlashPay::Schema::Result::UserSetting

=cut

__PACKAGE__->table("USER_SETTING");

=head1 ACCESSORS

=head2 user_setting_id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0

=head2 setting

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 value

  data_type: 'integer'
  is_nullable: 0

=head2 user_id

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_setting_id",
  { data_type => "bigint", is_auto_increment => 1, is_nullable => 0 },
  "setting",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "value",
  { data_type => "integer", is_nullable => 0 },
  "user_id",
  { data_type => "bigint", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("user_setting_id");


# Created by DBIx::Class::Schema::Loader v0.07002 @ 2010-10-17 02:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:chhrCYaH9+yd7e3XrXLdFA


# You can replace this text with custom content, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
