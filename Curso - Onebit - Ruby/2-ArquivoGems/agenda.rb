require 'csv'

contatos = []

loop do
  puts "Cadastro de Contatos"
  print "Digite o nome do contato (ou 'sair' para encerrar): "
  nome = gets.chomp

  break if nome.downcase == 'sair'

  print "Digite a idade do contato: "
  idade = gets.chomp.to_i

  print "Digite a cidade do contato: "
  cidade = gets.chomp

  contato = [nome, idade, cidade]
  contatos << contato
end



CSV.open("data/contatos.csv", "w") do |csv|
  contatos.each do |contato|
    csv << contato
  end
end

puts "Contatos salvos com sucesso no arquivo contatos.csv!"
