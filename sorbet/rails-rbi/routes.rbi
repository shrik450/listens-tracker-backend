# typed: strong
# This is an autogenerated file for Rails routes.
# Please run rake rails_rbi:routes to regenerate.
class ActionController::Base
  include GeneratedUrlHelpers
end

module ActionView::Helpers
  include GeneratedUrlHelpers
end

class ActionMailer::Base
  include GeneratedUrlHelpers
end

module GeneratedUrlHelpers
  # Sigs for route /feeds/:feed_id/episodes(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def feed_episodes_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def feed_episodes_url(*args, **kwargs); end

  # Sigs for route /feeds/:id/sync(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def sync_feed_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def sync_feed_url(*args, **kwargs); end

  # Sigs for route /feeds(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def feeds_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def feeds_url(*args, **kwargs); end

  # Sigs for route /feeds/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_feed_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_feed_url(*args, **kwargs); end

  # Sigs for route /feeds/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_feed_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_feed_url(*args, **kwargs); end

  # Sigs for route /feeds/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def feed_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def feed_url(*args, **kwargs); end

  # Sigs for route /episodes/:episode_id/appearances(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def episode_appearances_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def episode_appearances_url(*args, **kwargs); end

  # Sigs for route /episodes(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def episodes_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def episodes_url(*args, **kwargs); end

  # Sigs for route /episodes/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_episode_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_episode_url(*args, **kwargs); end

  # Sigs for route /episodes/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_episode_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_episode_url(*args, **kwargs); end

  # Sigs for route /episodes/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def episode_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def episode_url(*args, **kwargs); end

  # Sigs for route /hosts(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def hosts_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def hosts_url(*args, **kwargs); end

  # Sigs for route /hosts/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_host_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_host_url(*args, **kwargs); end

  # Sigs for route /hosts/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_host_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_host_url(*args, **kwargs); end

  # Sigs for route /hosts/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def host_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def host_url(*args, **kwargs); end

  # Sigs for route /rails/action_mailbox/mandrill/inbound_emails(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_mandrill_inbound_emails_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_mandrill_inbound_emails_url(*args, **kwargs); end

  # Sigs for route /rails/action_mailbox/postmark/inbound_emails(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_postmark_inbound_emails_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_postmark_inbound_emails_url(*args, **kwargs); end

  # Sigs for route /rails/action_mailbox/relay/inbound_emails(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_relay_inbound_emails_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_relay_inbound_emails_url(*args, **kwargs); end

  # Sigs for route /rails/action_mailbox/sendgrid/inbound_emails(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_sendgrid_inbound_emails_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_sendgrid_inbound_emails_url(*args, **kwargs); end

  # Sigs for route /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_mailgun_inbound_emails_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_mailgun_inbound_emails_url(*args, **kwargs); end

  # Sigs for route /rails/conductor/action_mailbox/inbound_emails(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_conductor_inbound_emails_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_conductor_inbound_emails_url(*args, **kwargs); end

  # Sigs for route /rails/conductor/action_mailbox/inbound_emails/new(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_rails_conductor_inbound_email_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def new_rails_conductor_inbound_email_url(*args, **kwargs); end

  # Sigs for route /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_rails_conductor_inbound_email_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def edit_rails_conductor_inbound_email_url(*args, **kwargs); end

  # Sigs for route /rails/conductor/action_mailbox/inbound_emails/:id(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_conductor_inbound_email_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_conductor_inbound_email_url(*args, **kwargs); end

  # Sigs for route /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_conductor_inbound_email_reroute_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_conductor_inbound_email_reroute_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/blobs/:signed_id/*filename(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_service_blob_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_service_blob_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_blob_representation_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_blob_representation_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/disk/:encoded_key/*filename(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_disk_service_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_disk_service_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/disk/:encoded_token(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def update_rails_disk_service_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def update_rails_disk_service_url(*args, **kwargs); end

  # Sigs for route /rails/active_storage/direct_uploads(.:format)
  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_direct_uploads_path(*args, **kwargs); end

  sig { params(args: T.untyped, kwargs: T.untyped).returns(String) }
  def rails_direct_uploads_url(*args, **kwargs); end
end
