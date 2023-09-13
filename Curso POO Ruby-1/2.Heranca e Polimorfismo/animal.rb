class Animal
    attr_reader :nome

    def initialize(nome)
        @nome = nome
    end

    def comunicar
        puts "Ola, sou a classe mãe"
    end

end

class Cachorro < Animal
    attr_reader :raça

    def initialize(nome, raça)
        super(nome)
        @raça = raça
    end

    def comunicar
        puts "au, au = Eu sou a classe filha cachorro"
    end
end


class Gato < Animal
    attr_reader :raça

    def initialize(nome, raça)
        super(nome)
        @raça = raça
    end
    def comunicar
        puts "miau, miau = Eu sou a classe filha gato"
    end
 
end








bob = Cachorro.new("Bob", "Poodle")
puts "Nome: #{bob.nome} , Raça: #{bob.raça}"
bob.comunicar
puts "----------------"
raul = Gato.new("Raul", "Siamês")
puts "Nome: #{raul.nome} , Raça: #{raul.raça}"
raul.comunicar