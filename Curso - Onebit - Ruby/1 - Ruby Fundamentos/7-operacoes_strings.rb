# Dados do Filme
name = "De Volta para o Futuro"
name2 = "de volta para o futuro"
description = "O filme trata de uma viagem no tempo"
description2 = <<text
                testando strings  multi-linhas
text




puts description[0]
puts description[-1]
puts description[0,4]
puts description[0..4]

puts description2.split
puts description2.split('mul')

puts "ruby".center(10,'-')
puts '*' * 20 