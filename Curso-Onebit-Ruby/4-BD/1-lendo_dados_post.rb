require 'pg'

# Configurações de conexão com o banco de dados
conn = PG.connect(
  dbname: 'Fliperama',
  user: 'postgres',
  password: '1234',
  host: 'localhost',
  port: 5432
)

# Consulta SQL para selecionar todos os dados da tabela 'exemplo'
query = "SELECT * FROM jogo"

begin
  # Executa a consulta
  result = conn.exec(query)

  # Itera sobre as linhas do resultado e imprime os dados
  result.each do |row|
    puts "ID: #{row['id']} - Nome: #{row['name']} - Ano: #{row['year']} - Score: #{row['score']}"
  end
ensure
  # Fecha a conexão com o banco de dados
  conn.close if conn
end