# BugSnag notify example
require 'eye/notify/bugsnag'

Eye.config do
  bugsnag api_key: '123yourbugsnagapikeygoeshere321', release_stage: ENV['RAILS_ENV'], notify_release_stages: %w(staging production)
  contact :devs, :bugsnag, 'whatever'
end

Eye.application 'test' do
  notify :devs, :info
  stdall '/tmp/eye-example.log'

  process :some_process do
    notify :devs, :debug
    start_command 'sleep 120'
    daemonize true
    pid_file '/tmp/sleep.pid'
  end

end
