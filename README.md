
# WaTrailRuns

Welcome to WaTrailRuns! This nifty gem scrapes two different websites to find the next 5 upcoming trail races in Washington State. It provides a list view in which you may peruse the titles and dates of the upcoming runs. Should one or more of them catch your fancy, you may select them through the menu. This will provide a short description of the run, as well as links for further information and registration!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wa_trail_runs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wa_trail_runs

Once the gem is installed, enter "WaTrailRuns::CLI.new.call" into your terminal.  See you on the trails!

## Usage

Following installation, within your terminal enter './bin/wa_trail_runs'.  You will see a welcome message followed by a numbered list of the next five upcoming trail runs in Washington State.  Simply select the number of any run you would like to know more about, and you will receive a short description as well as links for further exploring and registration.  To return to the list view, enter 'list' to your terminal, and to exit, enter 'exit'.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'buraizu'/wa_trail_runs. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WaTrailRuns project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'buraizu'/wa_trail_runs/blob/master/CODE_OF_CONDUCT.md).
