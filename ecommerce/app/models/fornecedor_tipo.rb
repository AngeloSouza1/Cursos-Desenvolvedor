class FornecedorTipo < ApplicationRecord
    self.table_name = "fornecedor_tipo"
    has_many :fornecedores, dependent: :destroy 
    validates_presence_of :nome
end
