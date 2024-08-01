class Fornecedor < ApplicationRecord
    validates_presence_of :nome, :cnpj
    validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP, allow_blank: true
    validates_format_of :cep, with: /\A\d{5}-\d{3}\z/, allow_blank: true, message: "deve ter o formato XXXXX-XXX"
    validates_format_of :cnpj, with: /\A\d{2}.\d{3}\.\d{3}\/\d{4}-\d{2}\z/, allow_blank: true, message: "deve ter o formato XX.XXX.XXX/XXXX-XX"
end
