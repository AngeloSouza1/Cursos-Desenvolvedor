require_relative "modulo"

class Calculadora
    include Operacoes
    def somar(*args)
        lista = []
        lista.push(*args)
        lista.inject(:+)
    end
end
c1= Calculadora.new
resultado = c1.somar(5,5,11,10)
res_subt = c1.subt( 10, 5)
puts resultado
puts res_subt
# class Aluno
#     def notas(*args)
#         notas = []
#         notas.push(*args)
#         notas
#     end
# end

# a1 = Aluno.new
# notas = a1.notas(10, 7 , 8, 9.8)
# puts notas


