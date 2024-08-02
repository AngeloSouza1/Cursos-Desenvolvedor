class Endereco < ApplicationRecord
  validates_presence_of :logradouro, :numero, :cep, :cidade, :estado
  has_many :fornecedores_enderecos
  has_many :fornecedores, through: :fornecedores_enderecos
end
