  puts "Bem-vindo ao gerador de e-mail!"
  
  print "Digite o seu primeiro nome: "
  first_name = gets.chomp
  
  print "Digite o seu último nome: "
  last_name = gets.chomp
  
  print "Digite o nome da empresa: "
  company = gets.chomp
  
  
  email = "#{first_name.downcase}.#{last_name.downcase}@#{company.downcase}.com"



  
  puts "\nO seu endereço de e-mail é: #{email}"
  