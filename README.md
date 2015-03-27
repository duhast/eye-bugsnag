# Eye::Bugsnag
[![Gem Version](https://badge.fury.io/rb/eye-bugsnag.svg)](http://badge.fury.io/rb/eye-bugsnag)

A notifier plugin for [eye](https://github.com/kostya/eye) to send info about process crashes to BugSnag.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eye'
gem 'eye-bugsnag'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eye-bugsnag

## Usage

BugSnag notifier takes the following parameters:

- `api_key` - required
- `release_stage` - optional, defaults to `development`, but is required to report correctly
- `notify_release_stages` - optional, defaults to `%w(development staging production)`
- `app_type` - optional, defaults to `eye`
- `project_root` - optional

Declare inside eye config like this:

```ruby
require 'eye/notify/bugsnag'

Eye.config do
  bugsnag api_key: '123yourbugsnagapikeygoeshere321', release_stage: ENV['RAILS_ENV'], notify_release_stages: %w(staging production)
  contact :devs, :bugsnag, 'whatever'
end
```

Refer to the example configuration file in `examples` directory.

## Contributing

1. Fork it ( https://github.com/duhast/eye-bugsnag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
