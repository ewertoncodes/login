require 'rails_helper'

RSpec.feature "UserSignOut", type: :feature do
  scenario "user signs out successfully" do
    user = create(:user)

    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Login'

    expect(page).to have_content('Login efetuado com sucesso')

    click_on 'Sair'
    expect(page).to have_content('Para continuar, faça login ou registre-se.')
  end
end
