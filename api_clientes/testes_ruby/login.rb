require 'httparty'
require 'json'

# Buscando token
url = 'http://127.0.0.1:3000/administradores/login'
headers = { 'Content-Type' => 'application/json' }
body = { email: 'angelo@teste.com', senha: '123456' }.to_json

response = HTTParty.post(url, body: body, headers: headers)

if (200...300).include?(response.code)
  body_content = JSON.parse(response.body)
  token = body_content['token']
  puts "Token: #{token}"



  # Buscando clientes
  url = 'http://127.0.0.1:3000/clientes'
  headers = { 
    'Content-Type' => 'application/json', 
    'Authorization' => "Bearer #{token}"
  }

  response = HTTParty.get(url, headers: headers) # Usando GET para listar clientes

  if (200...300).include?(response.code)
    clientes = JSON.parse(response.body)
    clientes.each do |cliente|
      puts "-----------"
      puts "Nome: #{cliente['nome']}"
    end
  end
end
