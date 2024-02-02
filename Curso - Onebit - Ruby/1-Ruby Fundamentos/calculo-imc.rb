def calcular_imc(peso, altura)
    imc = peso / (altura ** 2)
    return imc
  end
  
  puts "Vamos calcular o IMC (Índice de Massa Corporal)!"
  
  print "Por favor, digite o seu peso (em kg): "
  peso = gets.chomp.to_f
  
  print "Agora, digite a sua altura (em metros): "
  altura = gets.chomp.to_f
  
  imc = calcular_imc(peso, altura)
  
  puts "\nO seu IMC é: #{imc.round(2)}"
  
  case imc
  when 0...16.5
    puts "Peso muito abaixo do normal."
  when 16.5...18.5
    puts "Peso abaixo do normal."
  when 18.5...25
    puts "Peso normal."
  when 25...30
    puts "Pré-obeso."
  when 30...35
    puts "Obesidade Classe I."
  when 35...40
    puts "Obesidade Classe II."
  else
    puts "Obesidade Classe III."
  end
  