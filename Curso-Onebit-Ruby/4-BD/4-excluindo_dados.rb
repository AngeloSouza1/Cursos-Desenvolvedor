require 'pg'

# Configurações de conexão com o banco de dados
conn = PG.connect(
    dbname: 'Fliperama',
    user: 'postgres',
    password: '1234',
    host: 'localhost',
    port: 5432
  )

# ID do registro que você deseja excluir
id_do_registro = 4  # Substitua pelo ID do registro que você deseja excluir

# Crie a instrução SQL de exclusão
delete_query = "DELETE FROM jogo WHERE id = #{id_do_registro}"

# Executa a instrução SQL de exclusão
conn.exec(delete_query)

puts "Registro excluído com sucesso!"

# Fecha a conexão com o banco de dados
conn.close