# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# 10.times do |i|
#     Product.create!(name: "Produto #{i + 1}")
#   end

# require 'faker'

# # Criação de 10 produtos de exemplo com valores aleatórios
# 10.times do
# Product.create(
#     name: Faker::Commerce.product_name,
#     # Adicione outros atributos aleatórios, se necessário
# )
# end


s1 = Student.create(name: "Fulano")

t1 = Teacher.create(name: "Sicrano")