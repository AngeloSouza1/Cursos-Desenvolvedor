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


# s1 = Student.create(name: "Fulano")

# t1 = Teacher.create(name: "Sicrano")

# Criar alguns usuários de exemplo
5.times do |i|
    User.create!(
      name: "User #{i+1}",
      email: "user#{i+1}@example.com"
    )
  end
  
#   # Criar alguns artigos de exemplo para cada usuário
#   User.all.each do |user|
#     3.times do |i|
#       article = user.articles.create!(
#         title: "Article #{i+1} by #{user.name}",
#         content: "Content of article #{i+1} by #{user.name}",
#         category: "Category #{i+1}"
#       )
      
#       # Criar alguns comentários de exemplo para cada artigo
#       2.times do |j|
#         article.comments.create!(
#           body: "Comment #{j+1} on article #{article.title}",
#           user: User.all.sample
#         )
#       end
#     end
#   end