Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]

  match "static_pages/landing_page" => "static_pages#contact", :via => [:get, :post]

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/landing_page'

  get 'search' => 'products#search', as: 'search'

  get 'search_results' => 'products#search_results', as: 'search_results'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'welcome#index'

end
