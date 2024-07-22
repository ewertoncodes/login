require 'rails_helper'

RSpec.feature 'User sign in', type: :feature do
  let(:user) { create(:user) }

  scenario 'user signs in successfully' do
    visit new_user_session_path

    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password

    click_on 'Login'

    expect(page).to have_content('Login efetuado com sucesso!')
  end

  scenario 'user signs in with invalid email' do
    visit new_user_session_path

    fill_in 'user_email', with: 'invalid_email'
    fill_in 'user_password', with: user.password

    click_on 'Login'

    expect(page).to have_content('E-mail ou senha inválidos.')
  end

  scenario 'user signs in with invalid password' do
    visit new_user_session_path

    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: 'invalid_password'

    click_on 'Login'

    expect(page).to have_content('E-mail ou senha inválidos.')
  end
end
