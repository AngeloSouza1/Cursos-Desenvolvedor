class CarrosController < ApplicationController
  def index
    @carros = Carro.all
  end

  def show
     @carro = Carro.find(params[:id])
  end
end