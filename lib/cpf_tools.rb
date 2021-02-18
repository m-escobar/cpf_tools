# frozen_string_literal: true
require_relative "cpf_tools/version"

module CpfTools
  class Error < StandardError; end

  class << self
    def valid?(cpf)
      cpf = cpf.to_s if cpf.is_a? Integer
      tax_id = cpf.scan(/\d*/m).join

      if invalid_repetition?(tax_id)
        false
      elsif tax_id.length == 11
        id_array = tax_id.split('').map(&:to_i)

        first_digit  = id_multiplier(id_array[0..8])
        second_digit = id_multiplier(id_array[0..9])

        first_digit == id_array[9] && second_digit == id_array[10]
      else
        false
      end
    end

    private
    def invalid_repetition?(tax_id)
      tax_id.count('0') == 11 || tax_id.count('9') == 11
    end

    def id_multiplier(id)
      multiplier = id.length + 1
      tax_id_base = id.enum_for(:each_with_index).map { |x, idx| x * (multiplier - idx) }.inject(:+)
      result = (tax_id_base * 10) % 11
      result == 10 ? 0 : result
    end
  end
end
