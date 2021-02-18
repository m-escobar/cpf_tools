# CpfTools (WIP)

This is a gem with tools to work with Brazilian Tax ID, know as CPF.

This gem will validate the number itself, not if CPF is valid at govern department of Receita Federal.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cpf_tools'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cpf_tools

## Usage

## valid?
Any non-digit character will be ignored and only number will be tested.

Number will be validate for length, invalid number repetitions, first and second verification digits.

CpfTools.valid?('199.060.640-72')
CpfTools.valid?('19906064072')
CpfTools.valid?('199-060-640#72')
CpfTools.valid?(19906064072)
# true

CpfTools.valid?('123.060.640-72')
# false

## format
# with_mask
A string with default mask applied will be returned -> '###.###.###-##'
CpfTools.format('19906064072')
# '199.060.640-72'

# only_digits
A string with digits only will be returned.
CpfTools.format('199.060.640-72', :only_digits)
# '19906064072'


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/m-escobar/cpf_tools. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/m-escobar/cpf_tools/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CpfTools project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/m-escobar/cpf_tools/blob/master/CODE_OF_CONDUCT.md).
