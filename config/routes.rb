Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]

  root "static_pages#landing_page"

  post 'static_pages/thank_you'

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # root 'welcome#index'

end
