require 'pg'

# Configurações de conexão com o banco de dados
conn = PG.connect(
    dbname: 'Fliperama',
    user: 'postgres',
    password: '1234',
    host: 'localhost',
    port: 5432
  )
  

# Array de registros que você deseja inserir na tabela
registros = [
  { name: 'Resident Evil 4', year: 2023, score: 9.5 },
  { name: 'Spider Man 2', year: 2023, score: 9.0 }
  
]

# Itera sobre o array de registros e insere cada um na tabela 'jogo'
registros.each do |registro|
  name = registro[:name]
  year = registro[:year]
  score = registro[:score]

  # Cria a instrução SQL de inserção
  insert_query = "INSERT INTO jogo (name, year, score) VALUES ('#{name}', #{year}, #{score})"

  # Executa a instrução SQL de inserção
  conn.exec(insert_query)
end

puts "Registros inseridos com sucesso!"

# Fecha a conexão com o banco de dados
conn.close