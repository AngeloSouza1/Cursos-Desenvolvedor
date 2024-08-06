ActiveSupport::Inflector.inflections do |inflect|
  inflect.clear

  

  inflect.plural /^(ox)$/i, "\\1en"
  inflect.singular /^(ox)en/i, "\\1"
  inflect.irregular "person", "people"
  inflect.uncountable %w( fish sheep )

  # Regras para pluralização em português
  inflect.plural(/r$/i, 'res')
  inflect.plural(/l$/i, 'is')
  inflect.plural(/ão$/i, 'ões')
  inflect.plural(/m$/i, 'ns')
  inflect.plural(/s$/i, 'ses')
  inflect.plural(/il$/i, 'is')
  inflect.plural(/ul$/i, 'uis')
  inflect.plural(/x$/i, 'xes')

  # Regras para singularização em português
  inflect.singular(/res$/i, 'r')
  inflect.singular(/is$/i, 'l')
  inflect.singular(/ões$/i, 'ão')
  inflect.singular(/ns$/i, 'm')
  inflect.singular(/ses$/i, 's')
  inflect.singular(/is$/i, 'il')
  inflect.singular(/uis$/i, 'ul')
  inflect.singular(/xes$/i, 'x')

  # Regras irregulares
  inflect.irregular 'país', 'países'
  inflect.irregular 'cão', 'cães'
  inflect.irregular 'mão', 'mãos'
  inflect.irregular 'pão', 'pães'
  inflect.irregular 'carro', 'carros'
  inflect.irregular 'endereco', 'enderecos'
  # Palavras que não mudam no plural
  inflect.uncountable %w( tórax tênis ônibus lápis fênix )
end