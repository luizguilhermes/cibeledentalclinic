require 'rails_helper'

feature 'User create pacient' do
	scenario 'successfully' do
		visit root_path
		click_on 'Cadastrar cliente'
		
		fill_in 'Nome do paciente', with: 'Luiz Guilherme'
		fill_in 'CPF', with: '384.981.178-60'
		fill_in 'RG', with: '47.433.768-6'
		fill_in 'Sexo', with: 'Masculino'

		click_on 'Salvar paciente'
		
		expect(page).to have_content 'Luiz Guilherme'
		expect(page).to have_content '384.981.178-60'
		expect(page).to have_content '47.433.768-6'
		expect(page).to have_content 'Masculino'

	end
end