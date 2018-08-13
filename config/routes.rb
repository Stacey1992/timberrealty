Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get '/home' => 'sessions#landing'
	get '/about-us' => 'sessions#about_us'
	resources :sessions
	resources :waitlists

root 'sessions#landing'

end
