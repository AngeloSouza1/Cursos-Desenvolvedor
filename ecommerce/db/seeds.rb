# Carro.create(nome: 'Fiesta', modelo: 'Ford', ano: 2009) if Carro.where(nome: 'Fiesta').count == 0
# Carro.create(nome: 'Gol', modelo: 'Volkswagen', ano: 2015) if Carro.where(nome: 'Gol').count == 0
# Carro.create(nome: 'Civic', modelo: 'Honda', ano: 2012) if Carro.where(nome: 'Civic').count == 0
# Carro.create(nome: 'Uno', modelo: 'Fiat', ano: 2008) if Carro.where(nome: 'Uno').count == 0
# Carro.create(nome: 'Corsa', modelo: 'Chevrolet', ano: 2011) if Carro.where(nome: 'Corsa').count == 0
# Carro.create(nome: 'HB20', modelo: 'Hyundai', ano: 2016) if Carro.where(nome: 'HB20').count == 0
# Carro.create(nome: 'Sandero', modelo: 'Renault', ano: 2017) if Carro.where(nome: 'Sandero').count == 0
# Carro.create(nome: 'Ka', modelo: 'Ford', ano: 2014) if Carro.where(nome: 'Ka').count == 0
# Carro.create(nome: 'Corolla', modelo: 'Toyota', ano: 2013) if Carro.where(nome: 'Corolla').count == 0
# Carro.create(nome: 'Palio', modelo: 'Fiat', ano: 2010) if Carro.where(nome: 'Palio').count == 0
# Carro.create(nome: 'Onix', modelo: 'Chevrolet', ano: 2018) if Carro.where(nome: 'Onix').count == 0
# Carro.create(nome: 'Ecosport', modelo: 'Ford', ano: 2019) if Carro.where(nome: 'Ecosport').count == 0
# Carro.create(nome: 'Logan', modelo: 'Renault', ano: 2020) if Carro.where(nome: 'Logan').count == 0
# Carro.create(nome: 'City', modelo: 'Honda', ano: 2015) if Carro.where(nome: 'City').count == 0
# Carro.create(nome: 'Tucson', modelo: 'Hyundai', ano: 2011) if Carro.where(nome: 'Tucson').count == 0
# Carro.create(nome: 'Fusca', modelo: 'Volkswagen', ano: 1980) if Carro.where(nome: 'Fusca').count == 0

# db/seeds.rb

# Limpa todos os usuários existentes (opcional)
# User.destroy_all

# Cria um novo usuário
User.create!(
  email: 'angelo@teste.com',
  password: '123456',
  password_confirmation: '123456'
)

puts "Usuário criado com sucesso!"
