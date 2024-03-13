# # 1-Utilizando argumentos
# ARGV.each {|arg| puts arg}
# ARGV.each {|arg| puts arg.class}

# # 2-
# ARGV.each do |arg|
#     square = arg.to_i ** 2
#     puts "Raiz quadrada de #{arg} é #{square}"
# end

File.open("data/games.txt", "a") do |file|
    ARGV.each do |game|
        file.puts game
    end
 end