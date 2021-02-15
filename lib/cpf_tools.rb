# frozen_string_literal: true

require_relative "cpf_tools/version"

module CpfTools
  class Error < StandardError; end

  class << self
    def valid?(cpf)
      true
    end
  end
end
