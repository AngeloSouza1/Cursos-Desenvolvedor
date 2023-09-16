#principal.rb
require "/home/linux/Área de Trabalho/Curso DEV/Cursos Desenvolvedor/Curso POO Ruby-2/3. Exercicios/conta_bancaria.rb"
require "/home/linux/Área de Trabalho/Curso DEV/Cursos Desenvolvedor/Curso POO Ruby-2/3. Exercicios/conta_com_taxa.rb"


conta_angelo = ContaComTaxa.new("angelo", 100)
conta_pessoa2= ContaBancaria.new("pessoa2", 200)

conta_angelo.transferir(conta_pessoa2, 50)

p "Conta Angelo"
p conta_angelo.saldo

p "ContaPessoa 2 "
p conta_pessoa2.saldo


#caso teste de conta sem saldo

begin
    conta_angelo.transferir(conta_pessoa2, 60)
rescue StandardError => meu_erro    
p "Não foi possivel transferir: #{meu_erro.message}"
end

# codigo abaixo nao foi executao pois a linha acima gerou um erro

p "Conta Angelo"
p conta_angelo.saldo

p "ContaPessoa 2 "
p conta_pessoa2.saldo
