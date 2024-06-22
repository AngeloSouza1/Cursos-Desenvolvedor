require_relative "validacao"

class Cliente
  include Validacao

  attr_accessor :nome, :email
  validar_por_presenca  :nome, :email

end

cli = Cliente.new
puts cli.methods - Class.methods
puts "----------"
puts Cliente.methods - Class.methods

cli.nome = "Angelo"
cli.email = "angelo@teste.com"
cli.validar!


