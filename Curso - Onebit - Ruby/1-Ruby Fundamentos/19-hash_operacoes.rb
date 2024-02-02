movies = ["Homem Aranha", "Super Mario Bros", "O Máscara"]

# 1-Indexação e Atribuição
puts movies[0] # Primeiro filme
puts movies[-1] # Último filme
puts movies[1, 2]
movies[2] = "Top Gun Maverick"
puts movies
movies << "Avatar"
puts movies

# 2-Métodos úteis
puts movies.length
puts movies.first
puts movies.last
movies.append("Procurando Nemo")
puts movies
puts movies.sort()
puts movies.shuffle()

# Recuperando índice e valor
movies.each_with_index{|value, index| puts "#{index}-#{value}"}