#1-Blocks
# Blocos são trechos anônimos de código que aceitam
# entradas de argumentos e retornam um determinado valor
def hello
    yield
end

hello { puts "Hello World"}
hello { puts "Hello World2"}
hello { puts "Hello World3"}

def one_two_three
    yield 1
    yield 2
    yield 3
end

one_two_three { |number| puts number * 10}

# 2-FUnção de potência de um número
power = lambda { |num| num ** 2}
puts power.call(4)

# 3-FUnção que verifica se o número é par
pair = lambda { |x| x % 2 == 0}
puts pair.call(5)

# 4-Função que divide um número por outro
divNum = lambda { |x, y| x / y}
puts divNum.call(10, 5)