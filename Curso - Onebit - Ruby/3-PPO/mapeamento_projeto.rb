class Projeto
    attr_reader :name, :budget, :members
  
    def initialize(name, budget, members)
      @name = name
      @budget = budget
      @members = members
    end
  
    def budget=(new_budget)
      @budget = new_budget
    end
  
    def to_s
      "Projeto: #{@name}\nOrçamento: #{@budget}\nMembros: #{@members}"
    end
  end
  
  # Criando uma instância da classe Projeto
  projeto = Projeto.new("Automação Web", 10000, ["Fulano", "Sicrano"])
  
  puts "Detalhes do Projeto:"
  puts projeto
  