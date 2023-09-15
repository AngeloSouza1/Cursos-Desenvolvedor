class Sensor
    def instalar
        puts "estou intalando sensor"
    end

    def iniciar
        puts "estou iniciando sensor"
    end

    def coletar_metricas
        #sensor normal
        puts "estou coletando metricas"
        puts "estou analizando metricas"
    end
end

class SensorTemperaturas < Sensor
    def coletar_metricas
        puts "estou coletando metricas de temperatura"
        super
    end
    
end




sensor = SensorTemperaturas.new
sensor.instalar
sensor.iniciar
sensor.coletar_metricas
