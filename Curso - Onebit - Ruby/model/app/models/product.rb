    class Product < ApplicationRecord
        validates :name, presence: true
        validates_uniqueness_of :name
        validates_length_of :name, maximum: 5
    end



