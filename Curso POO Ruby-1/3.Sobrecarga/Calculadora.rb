class Calculadora
    def somar(*args)
        lista = []
        lista.push(*args)
        lista.inject(:+)
    end
end
c1= Calculadora.new
resultado = c1.somar(5,5,11,10)

puts resultado

class Aluno
    def notas(*args)
        notas = []
        notas.push(*args)
        notas
    end
end

a1 = Aluno.new
notas = a1.notas(10, 7 , 8, 9.8)
puts notas


