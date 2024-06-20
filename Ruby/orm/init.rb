require_relative 'models/produto'
require_relative 'models/fornecedor'
require 'terminal-table'

# p = Produto.new
#
# puts "==== metodos e atributos de instancia ===="
# puts p.methods - Class.methods
# puts "==== metodos e atributos de classe ==== "
# puts Produto.methods - Class.methods


    # Parse do JSON para obter a lista de produtos
    produtos = Produto.todos

    # Criação da tabela
    table = Terminal::Table.new do |t|
      t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Estoque', 'Fornecedor ID']
    # Preencha a tabela como os dados dos produtos
        produtos.each do |produto|
        t << [
          produto.id,
          produto.nome,
          produto.descricao,
          "%.2f" % produto.preco, # formata o preço parra 2 casas decimais
          produto.estoque,
          produto.fornecedor_id
        ]
        end
    end
# Exibição da tabela no console
puts table

# Parse do JSON para obter a lista de fornecedores
fornecedores = Fornecedor.todos

# Criação da tabela
table = Terminal::Table.new do |t|
  t.headings = ['ID', 'Nome', 'CNPJ']
  # Preencha a tabela como os dados dos fornecdores
  fornecedores.each do |fornecedor|
    t << [
      fornecedor.id,
      fornecedor.nome,
      fornecedor.cnpj
    ]
  end
end
# Exibição da tabela no console
puts table