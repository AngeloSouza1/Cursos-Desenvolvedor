require 'rest-client'
require 'byebug'


login = RestClient.post 'http://127.0.0.1:3000/administradores/login', {"email": "angelo@teste.com", "senha": "123456"}



puts login
