Rails.application.routes.draw do
  resources :categories
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => {:registrations => "registrations"}
  
  resources :orders, only: [:index, :show, :create, :destroy] 

  resources :users
  resources :products do
    resources :comments
  end
  

  root "static_pages#landing_page"

  post 'static_pages/thank_you'

  post 'payments/create'

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # root 'welcome#index'
  mount ActionCable.server => '/cable'

end
