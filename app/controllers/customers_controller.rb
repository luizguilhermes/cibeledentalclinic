class CustomersController < ApplicationController
	
	def index
		@customers = Customer.all
	end

	def show
		@customer = Customer.find(params[:id])
	end
	
	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			redirect_to @customer
		end
	end

	private

	def customer_params
		params.require(:customer).permit(:customer_name, :customer_cpf, :customer_cpf, :customer_rg, :customer_gender)
	end
end