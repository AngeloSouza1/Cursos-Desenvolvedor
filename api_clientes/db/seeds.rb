require 'faker'

20.times do
  Cliente.create(
    nome: Faker::Name.name,
    telefone: Faker::PhoneNumber.phone_number,
    cpf: Faker::IdNumber.brazilian_cpf 
  )
end


puts "Banco SEED atualizado"