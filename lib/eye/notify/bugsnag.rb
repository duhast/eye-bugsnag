require 'bugsnag'

class Eye::Notify::Bugsnag < Eye::Notify
  class NotificationException < StandardError
    include ::Bugsnag::MetaData
  end

  # Eye.config do
  #   bugsnag api_key: '46trdhqxuke4grw34', release_stage: 'staging'
  #   contact :devs, :bugsnag
  # end

  param :api_key, String, true
  param :release_stage, String, false, 'development'
  param :notify_release_stages, Array, false, %w(development staging production)
  param :app_type, String, false, 'eye'
  param :project_root, String, false

  def execute
    ::Bugsnag.configure do |cfg|
      cfg.api_key = api_key
      cfg.release_stage = release_stage
      cfg.notify_release_stages = notify_release_stages
      cfg.auto_notify = false
      #config.use_ssl = true
      cfg.project_root = project_root unless project_root.blank?
      #config.app_version = "2.5.1"
      #config.params_filters << "password" << "password_confirmation"
      #config.ignore_classes << "ActiveRecord::StatementInvalid"
      #config.ignore_classes << lambda {|ex| ex.message =~ /timeout/}
      #config.ignore_user_agents << %r{Chrome}
      #config.timeout = 10
      cfg.app_type = "eye"
    end
    notify_ex = NotificationException.new(message_subject)
    notify_ex.bugsnag_meta_data = @message_h
    ::Bugsnag.notify(notify_ex)
  end

end

Eye::Notify.register(Eye::Notify::Bugsnag)