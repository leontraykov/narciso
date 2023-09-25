Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    resources :users
    get 'pages/main'
    get '/about', to: 'pages#about'
    get '/contact', to: 'pages#contact'
    
    resources :paintings do
      resources :images, only: [:create, :destroy]
    end
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    root "pages#main"
  end
end
