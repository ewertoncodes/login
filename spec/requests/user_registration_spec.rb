require 'rails_helper'

RSpec.describe "User Registrations", type: :request do
  describe "POST /users" do
    it "registers a new user" do
      post user_registration_path, params: {
        user: {
          email: 'user@example.com',
          password: 'password123',
          password_confirmation: 'password123'
        }
      }

      expect(response).to redirect_to(root_path)
      follow_redirect!

      expect(response).to have_http_status(:ok)
    end

    it "fails to register with mismatched passwords" do
      post user_registration_path, params: {
        user: {
          email: 'user@example.com',
          password: 'password123',
          password_confirmation: 'differentpassword'
        }
      }

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
