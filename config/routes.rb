Rails.application.routes.draw do
  resources :in_shopping_carts, only: [:create, :destroy]
  resources :attachments, only: [:create, :new, :destroy, :show]
  resources :products
  get 'welcome/index'
  post "/emails/create", as: :create_email
  get "/carrito", to: "shopping_carts#show"
  get "/add/:product_id", as: :add_to_cart, to: "in_shopping_carts#create"
  devise_for :users
  
  authenticated :user do
  	 root 'welcome#index'
  end

   unauthenticated :user do
   	devise_scope :user do
  	 root 'welcome#unregistered', as: :unregistered_root
  	end
  end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
