require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    context 'when the user is valid' do
      let(:user) { create(:user) }

      it 'is valid with a name, email, and password' do
        expect(user).to be_valid
      end
    end

    context 'when the user is invalid' do
      let(:user) { build(:user, email: nil) }

      it 'is invalid without an email' do
        user.valid?
        expect(user.errors[:email]).to include("não pode ficar em branco")
      end
    end

    context 'when the password is empty' do
      let(:user) { build(:user, password: nil) }

      it 'is invalid without a password' do
        user.valid?
        expect(user.errors[:password]).to include("não pode ficar em branco")
      end
    end

    context 'when the password is too short' do
      let(:user) { build(:user, password: '123') }

      it 'is invalid with a short password' do
        user.valid?
        expect(user.errors[:password]).to include("é muito curta (mínimo: 6 caracteres)")
      end
    end

    context 'when the user email is already taken' do
      let(:user) { create(:user) }
      let(:user2) { build(:user, email: user.email) }

      it 'is invalid with a duplicate email address' do
        user2.valid?
        expect(user2.errors[:email]).to include("já está em uso")
      end
    end
  end
end
