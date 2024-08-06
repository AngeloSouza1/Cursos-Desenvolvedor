class ApplicationController < ActionController::API
  before_action :autenticacao

  private

  def autenticacao
    header_auth = request.headers['Authorization']
    return render json: { erro: "Token Bearer obrigatório" }, status: 401 if header_auth.blank?

    token = header_auth.split(' ').last

    # decode do token
    begin
      token_decoded = JWT.decode(token, TOKEN_JWT)
      id = token_decoded.first["data"]["id"] rescue 0 
      @adm = Administrador.find(id)
    rescue
      render json: { erro: "Token Inválido" }, status: 401
    end  
  end
end
