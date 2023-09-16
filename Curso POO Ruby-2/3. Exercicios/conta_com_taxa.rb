class ContaComTaxa < ContaBancaria
   TAXA = 2
    
    def transferir(outra_conta, valor)
        super(outra_conta,valor)
        debitar(TAXA)
    end
end
