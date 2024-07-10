class CarrosController < ApplicationController
  def index
    @carros = Carro.todos
  end

  def show
    carros = Carro.todos
    id = params[:id]
    @carro = carros.find{ | c | c.id == id }
  end
end