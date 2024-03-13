require 'date'

def validar_formato_data(data)
    # Expressão regular para verificar o formato "dd/mm/aaaa"
    formato_data = /^\d{2}\/\d{2}\/\d{4}$/

    # Verifica se a data corresponde ao formato esperado
    if data.match?(formato_data)
        # Divide a data em dia, mês e ano
        dia, mes, ano = data.split('/').map(&:to_i)

        # Verifica se a data é válida
        if Date.valid_date?(ano, mes, dia)
            # Retorna a data no formato "aaaa-mm-dd"
            return "#{ano}-#{mes.to_s.rjust(2, '0')}-#{dia.to_s.rjust(2, '0')}"
        else
            return "Data inválida"
        end
    else
        return "Formato de data inválido"
    end
end

# Solicita a data ao usuário
print "Digite uma data no formato dd/mm/aaaa: "
data_digitada = gets.chomp

# Valida e formata a data
data_formatada = validar_formato_data(data_digitada)

# Imprime o resultado
puts data_formatada
