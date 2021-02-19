# CpfTools

This is a gem with tools to work with the Brazilian Tax ID, known as CPF.

This gem will validate the number itself, and not if CPF is valid at govern department of Receita Federal.

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

### CpfTools.valid? (boolean)
Any non-digit character will be ignored and only numbers will be tested.

Tax ID number will be validate for length, invalid number repetitions, first and second verification digits.

    CpfTools.valid?('199.060.640-72') => true
    CpfTools.valid?('19906064072') => true
    CpfTools.valid?('199-060-640#72') => true
    CpfTools.valid?(19906064072) => true

    CpfTools.valid?('123.060.640-72') => false


### CpfTools.format (string)
Format the CPF accordingly with the parameters, no validation will be done.
### with_mask
A string with default mask applied will be returned -> '###.###.###-##'
    CpfTools.format('19906064072') => '199.060.640-72'

### digits_only
A string with digits only will be returned.
CpfTools.format('199.060.640-72', format: :only_digits)
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
