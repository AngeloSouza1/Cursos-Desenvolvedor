puts "Calculadora de Frequência de Letras"
print "Digite uma palavra ou texto: "
texto = gets.chomp

frequencia_letras = Hash.new(0)

texto.each_char do |letra|
  if letra.match?(/[a-zA-Z]/)
    frequencia_letras[letra] += 1
  end
end

puts "\nFrequência de letras no texto:"
('A'..'Z').each do |letra_maiuscula|
  letra_minuscula = letra_maiuscula.downcase
  total = frequencia_letras[letra_minuscula] + frequencia_letras[letra_maiuscula]
  puts "#{letra_maiuscula}: #{frequencia_letras[letra_maiuscula]} | #{letra_minuscula}: #{frequencia_letras[letra_minuscula]} | Total: #{total}"
end
