module Atributos
  attr_accessor :id, :nome, :documento
end

class PessoaFisica
  include Atributos
end

class PessoaJuridica
  include Atributos
end


puts PessoaFisica.new.methods - Class.methods
puts "------------"
puts PessoaJuridica.new.methods - Class.methods


class PessoaFisica1
  extend Atributos
end

class PessoaJuridica1
  extend Atributos
end


#aplicando na classe por extends
puts PessoaFisica1.methods - Class.methods
puts "********"
puts PessoaJuridica1.methods - Class.methods