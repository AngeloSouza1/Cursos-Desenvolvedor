class Pessoa
    attr_writer :nome
       
    def initialize(nome)
        @nome = nome
    end
    
    def imprimir_ola(nome)
        @nome = nome
        puts "Olá #{nome}"
    end
    
  
end

pessoa = Pessoa.new("pessoa")
pessoa.nome = "Foo"
pessoa.imprimir_ola

