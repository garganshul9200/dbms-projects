Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  	#root "devise/sessions#new"

	devise_scope :user do
		# Redirests signing out users back to sign-in
		get "users", to: "devise/sessions#new"
	end
	devise_for :users do
	end
end
