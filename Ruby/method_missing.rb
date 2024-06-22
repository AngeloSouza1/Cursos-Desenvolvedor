class Configuracao
  def self.configurar
    config = self.new
    yield(config)
    config
  end

  def method_missing(nome_metodo, *args, &block)
    if nome_metodo.to_s.end_with?("=")
      instance_variable_set("@#{nome_metodo.to_s.chomp("=")}", args.first)
    else
      instance_variable_get("@#{nome_metodo}")
    end


    # puts nome_metodo
    # puts args.inspect
    # # block.call unless block.nil?
    # block.call if block_given?

  end




mysql_config = Configuracao.configurar do |config|
  def config.database
    "banco_de_dados_metaprogramacao"
  end

  def config.user
    "root"
  end

  def config.password
    "123456"
  end
end


  #tests
  # mysql_config = Configuracao.new
  # puts mysql_config.database(1,2,3,4)
  # puts mysql_config.user "teste"
  # puts mysql_config.password
  # mysql_config.com_bloco(123) do
  #   puts "ola pessoal"
  # end

  puts mysql_config.database
  puts mysql_config.user
  puts mysql_config.password
end