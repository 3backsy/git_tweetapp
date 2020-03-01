Rails.application.routes.draw do
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "/" => "home#top"
  get "about" => "home#about"
  get "posts/:id/show" => "posts#show"
  resources :posts
end
