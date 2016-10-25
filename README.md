# Prybegone

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'prybegone', '0.2.2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prybegone


## Usage
Use the following commands in the command line to disable, activate or remove all pry bindings within the codebase.

#### Comment-out & disable all active bindings
```ruby
  prybegone -co
```
#### Comment-in & activate all disabled bindings
```ruby
  prybegone -ci
```
#### Remove active bindings
```ruby
  prybegone -r
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/toddrizley/prybegone. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
