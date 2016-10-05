require 'rails_helper'

RSpec.describe AuctionsController, type: :controller do
  let(:auction) { FactoryGirl.create :auction }
  let(:user) { FactoryGirl.create :user }

  describe 'create' do
    context 'no signed user' do
      it 'redirect user login' do
        get :new
        expect(response).to redirect_to new_user_session_path
      end
    end
    context 'signed user' do
      before do
        sign_in user
      end
      it 'new page' do
        get :new
        expect(response).to render_template :new
      end
    end
  end
end
