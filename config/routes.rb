Rails.application.routes.draw do
  get 'posts/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/" => "homes#top"
  get "/new" => "posts#new"

end
