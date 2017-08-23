require 'rails_helper'

describe RegistrationsController, type: :controller  do

  before do
  @user = FactoryGirl.create(:user)
  @user1 = FactoryGirl.create(:user)
  end

  describe 'GET #show' do
    context 'when a user signs up' do
      before do
        it "loads correct user details" do
          expect(assigns(:user)).to eq @user
          expect(response.status).to eq(200)
        end
      end
    end      

    context 'when a user is not signed up correctly' do
      before do
        it 'renders registration erb' do
          expect(response).to redirect_to(login_path)
          expect(assigns(:user)).to eq @user
        end
      end
    end

  end
end

