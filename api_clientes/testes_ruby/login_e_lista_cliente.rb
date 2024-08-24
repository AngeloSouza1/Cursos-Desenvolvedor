require_relative 'clientes_http_party'

clientes_http_party = ClienteHttpParty.new
clientes_http_party.login!("angelo@teste.com", "123456")

page = ARGV[0].to_i || 1
page = page < 1 ? 1 : page


clientes_http_party.get_clientes_paginado(page)