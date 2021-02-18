# frozen_string_literal: true

RSpec.describe CpfTools do
  let (:valid_cpf)   { '34001039001' }
  let (:invalid_cpf) { '34001039002' }

  it 'has a version number' do
    expect(CpfTools::VERSION).not_to be nil
  end

  it 'cpf is valid' do
    cpf = CpfTools.valid?(valid_cpf)
    expect(cpf).to eq(true)
  end

  it 'cpf is invalid' do
    cpf = CpfTools.valid?(invalid_cpf)
    expect(cpf).to eq(false)
  end
end
