loop do
    puts "Calculadora Matemática"
    puts "Operações disponíveis: + (soma), - (subtração), * (multiplicação), / (divisão)"
    puts "Pressione 'q' para sair"
  
    print "Digite o primeiro número: "
    num1 = gets.chomp.to_f
  
    print "Digite o segundo número: "
    num2 = gets.chomp.to_f
  
    print "Digite a operação desejada (+, -, *, /): "
    operacao = gets.chomp
  
    case operacao
    when '+'
      resultado = ->(a, b) { a + b }
    when '-'
      resultado = ->(a, b) { a - b }
    when '*'
      resultado = ->(a, b) { a * b }
    when '/'
      if num2 == 0
        puts "Erro: divisão por zero!"
        next
      else
        resultado = ->(a, b) { a / b }
      end
    when 'q'
      puts "Saindo..."
      break
    else
      puts "Operação inválida!"
      next
    end
  
    puts "Resultado: #{resultado.call(num1, num2)}"
  end
  