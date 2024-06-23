class Fornecedor
  def como_estou_hoje?
    puts "Estou muito bem e trabalhando com entregas para meus clientes"
  end
end


Fornecedor.class_eval do
  alias_method :original_como_estou_hoje?, :como_estou_hoje?

  def como_estou_hoje?
    puts "Puxa hoje não estamos muito bem, acabamos de bater o caminhao"
  end

end

f= Fornecedor.new
f.como_estou_hoje?