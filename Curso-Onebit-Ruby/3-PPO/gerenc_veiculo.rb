class Veiculo
    attr_reader :placa, :marca
  
    def initialize(placa, marca)
      @placa = placa
      @marca = marca
    end
  
    def detalhes
      "Placa: #{@placa}, Marca: #{@marca}"
    end
  end
  
  class Carro < Veiculo
    attr_reader :portas
  
    def initialize(placa, marca, portas)
      super(placa, marca)
      @portas = portas
    end
  
    def detalhes
      super + ", Portas: #{@portas}"
    end
  end
  
  class Moto < Veiculo
    attr_reader :cilindrada
  
    def initialize(placa, marca, cilindrada)
      super(placa, marca)
      @cilindrada = cilindrada
    end
  
    def detalhes
      super + ", Cilindrada: #{@cilindrada}"
    end
  end
  
  def exibir_detalhes(veiculo)
    puts veiculo.detalhes
  end
  
  # Exemplo de uso:
  carro = Carro.new("ABC1234", "Toyota", 4)
  moto = Moto.new("XYZ5678", "Honda", "150cc")
  
  exibir_detalhes(carro)
  exibir_detalhes(moto)
  