[![Code Climate](https://codeclimate.com/github/kidush/ionic_push/badges/gpa.svg)](https://codeclimate.com/github/kidush/ionic_push)
# IonicPush

Just a simple gem to send push notificaitons through Ionic Push API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ionic_push'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ionic_push

## Usage

### Configuration

Before all You'll need your Ionic [API TOKEN](http://docs.ionic.io/v2.0.0-beta/docs/api-getting-started#section-authentication) and a [Security Profile](http://docs.ionic.io/v2.0.0-beta/docs/security-profiles). For more details about Ionic Push see the [official documentation](http://docs.ionic.io/docs/push-sending-push).

You'll have create a configuration file.

Ex.`initializers/ionic_push.rb`
```ruby
IonicPush.configure do |config|
  config.api_key = '<YOUR-API-KEY>'
  config.profile = '<YOUR-SECURIY-PROFILE>'
end
```

### The basic

```ruby
IonicPush.push(['your', 'devices', 'tokens'], { title: 'Push Title', message: 'Push Message' })
```

### Adding Custom data to your notificaitons

```ruby
notification_params = {
  title: 'Push Title',
  message: 'Push Message',
  android: {
    data: "https://pbs.twimg.com/profile_images/617058765167329280/9BkeDJlV.png"
  }
}

IonicPush.push(['your', 'devices', 'tokens'], notification_params)
```

## To do

- [x] Basic API Usage
- [x] Adding custom data to your notificaitons
- [x] Phonegap Push plugin options
- [x] Customizing Notification appearance
- [ ] Sengind Push to Ionic User ID's
- [ ] Scheduling a push for later delivery
- [ ] Templating your push notification
- [ ] Notification's priority
- [ ] Checking the status of push


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kidush/ionic_push.

