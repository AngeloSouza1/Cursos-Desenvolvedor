puts Dir.pwd
# Dir.mkdir "teste"

# Lista arquivos e pastas
print Dir.glob "*"

# Lista apenas arquivos rb
print Dir.glob "*.rb"

Dir.glob("*") do |file|
    puts file
end

# Navegando entre diretórios
Dir.chdir "data"
puts Dir.pwd