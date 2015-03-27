# Eye::Bugsnag

Sends info about process crashes to BugSnag.

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

- `api_key` _(required)_
- `release_stage`,  _(optional, defaults to `development`)_
- `notify_release_stages`  _(optional, defaults to `%w(development staging production)`)_
- `app_type` _(optional, defaults to `eye`)_
- `project_root` _(optional)_

Declare inside eye config like this:

```ruby
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
