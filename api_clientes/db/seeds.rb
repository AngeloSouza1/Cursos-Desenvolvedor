require 'faker'

20.times do
  Cliente.create(
    nome: Faker::Name.name,
    telefone: Faker::PhoneNumber.phone_number,
    cpf: Faker::IdNumber.brazilian_cpf 
  )
end


Administrador.create(nome:"angelo", email: "angelo@teste.com", senha: "123456", perfil: "ADM")
Administrador.create(nome:"user", email: "user@teste.com", senha: "123456", perfil: "Editor")






puts "Banco SEED atualizado"