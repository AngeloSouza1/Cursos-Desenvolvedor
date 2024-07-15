module FornecedoresHelper
  def formata_hora(data)
    return  data.strftime("%d/%m/%Y %H:%M")
  end

end
