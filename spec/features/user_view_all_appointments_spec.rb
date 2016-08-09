require 'rails_helper'

feature 'User view all appointments' do
	scenario 'successfully' do
		customer = create(:customer)
		appointment = create(:appointment)

		visit root_path
		click_on 'Visualizar consultas'

		expect(page).to have_content appointment.health_insurance
		expect(page).to have_content appointment.date
		expect(page).to have_content appointment.service
		expect(page).to have_content appointment.price
	end
end