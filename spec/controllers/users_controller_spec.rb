require 'rails_helper'

describe UsersController, type: :controller  do
  @user = User.create!(first_name: 'theo', last_name: 'treffers', email:'theotreffers@gmail.com', password: '1234567')
  @user1 = User.create!(first_name: 'ollie', last_name: 'janssen', email: 'ollie@gmail.com', password: '5678900')
end

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in @user
      end

      it "loads correct user details" do
        get :show, params: {id: @user.id}
        expect(assigns(:user)).to eq @user
        expect(response.status).to eq(200)
      end

    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :show, params: {id: @user.id}
        expect(response).to redirect_to(new_user_session_path)
      end

    context "User1 cannot access User#Show" do
      before do 
        sign_in @user1
      end

      it "redirects to root_path" do
        get :show, params: {id: @user1.id}
        expect(response).to redirect_to(root_path)
      end
    end
    end
  end

end
