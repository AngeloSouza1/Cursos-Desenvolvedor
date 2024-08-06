class HomeController < ApplicationController
  def index
    render json: {
      mensagem: "Bem-vindo a minha API"
    }
  end
end
