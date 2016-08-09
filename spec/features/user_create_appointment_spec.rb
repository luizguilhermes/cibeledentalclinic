require 'rails_helper'

feature 'User create appointment' do
	scenario 'successfully' do
		customer = create(:customer)
		visit root_path
		click_on 'Agendar consulta'
		select customer.customer_name, from: 'Cliente'
		expect(page).to have_content 'Possui convênio?'
		choose 'Yes'
		expect(page).to have_content 'Número do convênio'
		expect(page).to have_content 'Data agendada'
		expect(page).to have_content 'Serviço'
		expect(page).to have_content 'Valor'
	end
end