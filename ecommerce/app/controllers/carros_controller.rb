class CarrosController < ApplicationController
  def index
    @carros = Carro.all
  end

  def show
     @carro = Carro.find(params[:id])
  end

  def editar
    @carro = Carro.find(params[:id])
  end
  def apagar
    @carro = Carro.find(params[:id])
  end


end