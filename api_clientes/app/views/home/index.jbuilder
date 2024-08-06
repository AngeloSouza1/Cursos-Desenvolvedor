json.mensagem "Olá pessoal! Bem-vindo à API com JBuilder"


#documentacao endpoints

json.endpoints do |item|
   item.lista "/clientes"
   json.descricao "Lista todos os clientes"
   item.um_cliente "/clientes/1"
   json.descricao_um "Obtém os detalhes do cliente com ID" 
end