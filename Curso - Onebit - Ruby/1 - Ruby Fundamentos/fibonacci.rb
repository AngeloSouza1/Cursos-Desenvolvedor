puts "Sequência de Fibonacci"
print "Digite um número inteiro positivo: "
number = gets.chomp.to_i

if number < 0
  puts "Por favor, digite um número inteiro positivo."
else
  a = 0
  b = 1

  puts "A sequência de Fibonacci para os primeiros #{number} números é:"
  (1..number).each do
    puts a
    c = a + b
    a = b
    b = c
  end
end
