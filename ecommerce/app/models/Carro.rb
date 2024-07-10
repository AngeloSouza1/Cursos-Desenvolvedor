class Carro
  def initialize(carro_hash = {})
    @id = carro_hash[:id]
    @nome = carro_hash[:nome]
    @modelo = carro_hash[:modelo]
    @ano = carro_hash[:ano]
  end

  attr_accessor :id, :nome, :modelo, :ano

  def self.todos
    [
      Carro.new({ :id => "1", :nome => "Fiesta", :modelo => "Ford", :ano => "1998" }),
      Carro.new({ :id => "2", :nome => "Gol", :modelo => "Volkswagen", :ano => "2005" }),
      Carro.new({ :id => "3", :nome => "Civic", :modelo => "Honda", :ano => "2010" }),
      Carro.new({ :id => "4", :nome => "Uno", :modelo => "Fiat", :ano => "2000" }),
      Carro.new({ :id => "5", :nome => "Corsa", :modelo => "Chevrolet", :ano => "2003" }),
      Carro.new({ :id => "6", :nome => "HB20", :modelo => "Hyundai", :ano => "2015" }),
      Carro.new({ :id => "7", :nome => "Sandero", :modelo => "Renault", :ano => "2014" }),
      Carro.new({ :id => "8", :nome => "Ka", :modelo => "Ford", :ano => "2018" }),
      Carro.new({ :id => "9", :nome => "Corolla", :modelo => "Toyota", :ano => "2017" }),
      Carro.new({ :id => "10", :nome => "Palio", :modelo => "Fiat", :ano => "2009" }),
      Carro.new({ :id => "11", :nome => "Onix", :modelo => "Chevrolet", :ano => "2016" }),
      Carro.new({ :id => "12", :nome => "Ecosport", :modelo => "Ford", :ano => "2012" }),
      Carro.new({ :id => "13", :nome => "Logan", :modelo => "Renault", :ano => "2011" }),
      Carro.new({ :id => "14", :nome => "City", :modelo => "Honda", :ano => "2013" }),
      Carro.new({ :id => "15", :nome => "Tucson", :modelo => "Hyundai", :ano => "2008" })
    ]
  end
end
