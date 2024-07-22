require 'rails_helper'

feature 'User registration' do
  scenario 'with valid data' do
    visit new_user_registration_path

    fill_in 'user_email', with: FFaker::Internet.email
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'

    click_button 'Inscrever-se'

    expect(page).to have_content 'Bem vindo! Você realizou seu registro com sucesso.'
  end

  scenario 'with invalid data' do
    visit new_user_registration_path

    fill_in 'user_email', with: FFaker::Internet.email
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password123'

    click_button 'Inscrever-se'

    expect(page).to have_content 'Não foi possível salvar usuário'
  end
end
