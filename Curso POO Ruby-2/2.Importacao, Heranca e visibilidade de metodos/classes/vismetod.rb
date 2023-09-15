#acessibiliade de métodos
#contexto classe
class MinhaClasse
    def m1
        puts "Método 1"
    end
    
    #private
    #private def m2
    def m2
        puts "Método 2"
    end
    
    def m3
        puts "Método 3"
    end
end

    ### partir daqui, é outro contexto
    obj = MinhaClasse.new
    obj.m1