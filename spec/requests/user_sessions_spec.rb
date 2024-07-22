require 'rails_helper'

RSpec.describe "User Sessions", type: :request do
  let(:user) { create(:user, email: 'user@example.com', password: 'password123') }

  describe "POST /users/sign_in" do
    it "logs the user in" do
      post user_session_path, params: {
        user: {
          email: user.email,
          password: user.password
        }
      }

      expect(response).to redirect_to(root_path)
      follow_redirect!

      expect(response).to have_http_status(:ok)
    end

    it "fails to log in with invalid credentials" do
      post user_session_path, params: {
        user: {
          email: user.email,
          password: 'wrongpassword'
        }
      }

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
