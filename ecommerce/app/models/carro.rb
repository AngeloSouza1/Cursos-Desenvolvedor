class Carro < ApplicationRecord
    validates_presence_of :nome, :modelo, :ano

end
