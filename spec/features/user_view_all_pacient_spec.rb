require 'rails_helper'

feature 'User view pacient list' do 
	scenario 'successfully' do
		customer1 = create(:customer)
		customer2 = create(:customer, customer_name: 'Cibele', customer_cpf: '14785236990', customer_rg: '123456789', customer_gender: 'Feminino')
		visit root_path
		click_on 'Visualizar pacientes'

		expect(page).to have_content customer1.customer_name
		expect(page).to have_content customer1.customer_cpf
		expect(page).to have_content customer1.customer_rg
		expect(page).to have_content customer1.customer_gender
		expect(page).to have_content customer2.customer_name
		expect(page).to have_content customer2.customer_cpf
		expect(page).to have_content customer2.customer_rg
		expect(page).to have_content customer2.customer_gender

	end
end