# app/models/user.rb
class User < ApplicationRecord
    has_many :articles
    has_many :comments
  end