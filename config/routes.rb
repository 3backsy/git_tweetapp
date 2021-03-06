Rails.application.routes.draw do
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get "posts/:id/delete" => "posts#destroy"
  get "/" => "home#top"
  get "about" => "home#about"
  get "posts/:id" => "posts#show"
  resources :posts
end
