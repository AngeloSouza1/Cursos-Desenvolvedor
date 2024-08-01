class Carro < ApplicationRecord
    validates_presence_of :nome, :modelo, :ano
    validates_length_of :nome, minimum: 10 , maximum: 30
    # validates_numericality_of :ano, greater_than: 2000
    # validates_numericality_of :ano, greater_than_or_equal_to: 2000
    # validates_numericality_of :ano, greater_than_or_equal_to: Time.now.year
    # validates_numericality_of :ano, less_than_or_equal_to: Time.now.year
    # validates_numericality_of :ano, odd: true # impar
    # validates_numericality_of :ano, odd: true # par
    # validates_numericality_of :ano, only_integer: true

end
