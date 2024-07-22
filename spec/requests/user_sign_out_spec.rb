require 'rails_helper'

RSpec.describe "User Sign Out", type: :request do
  let(:user) { create(:user, email: 'user@example.com', password: 'password123') }

  describe "DELETE /users/sign_out" do
    before do
      sign_in user
    end

    it "logs the user out" do
      delete destroy_user_session_path

      expect(response).to redirect_to(root_path)
      follow_redirect!

      expect(response).to have_http_status(:found)
    end
  end
end
