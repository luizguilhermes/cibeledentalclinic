class Customer < ApplicationRecord
	validates :customer_name, :customer_cpf, :customer_rg, :customer_gender, presence: true
end
