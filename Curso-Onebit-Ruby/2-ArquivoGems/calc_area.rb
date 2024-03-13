module CalculoQuadrado
    def self.calcular_area(lado)
      return lado * lado
    end
  end
  
  module CalculoRetangulo
    def self.calcular_area(base, altura)
      return base * altura
    end
  end
  
  puts "Calculadora de Área"
  puts "1. Calcular área de um quadrado"
  puts "2. Calcular área de um retângulo"
  print "Escolha uma opção: "
  opcao = gets.chomp.to_i
  
  case opcao
  when 1
    print "Digite o lado do quadrado: "
    lado = gets.chomp.to_f
    area_quadrado = CalculoQuadrado.calcular_area(lado)
    puts "A área do quadrado é: #{area_quadrado}"
  when 2
    print "Digite a base do retângulo: "
    base = gets.chomp.to_f
    print "Digite a altura do retângulo: "
    altura = gets.chomp.to_f
    area_retangulo = CalculoRetangulo.calcular_area(base, altura)
    puts "A área do retângulo é: #{area_retangulo}"
  else
    puts "Opção inválida!"
  end
  