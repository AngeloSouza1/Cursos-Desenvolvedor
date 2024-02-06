require 'date'

def calcular_data_entrega(data_envio, tempo_entrega_dias)
    # Convertendo a string de data_envio para um objeto Date
    data_envio_obj = Date.parse(data_envio)

    # Definindo o número de dias úteis restantes para a entrega
    dias_uteis_restantes = tempo_entrega_dias

    # Iterando sobre os dias úteis para calcular a data estimada de entrega
    while dias_uteis_restantes > 0
        # Avançando para o próximo dia
        data_envio_obj = data_envio_obj.next_day

        # Verificando se o dia é útil (segunda a sexta-feira)
        unless data_envio_obj.saturday? || data_envio_obj.sunday?
            dias_uteis_restantes -= 1
        end
    end

    # Retornando a data estimada de entrega no formato "YYYY-MM-DD"
    return data_envio_obj.to_s
end

# Exemplo de uso da função
data_envio = "2024-01-30"
tempo_entrega_dias = 5
data_estimada_entrega = calcular_data_entrega(data_envio, tempo_entrega_dias)
puts "Data estimada de entrega: #{data_estimada_entrega}"
