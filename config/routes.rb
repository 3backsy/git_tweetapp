Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "home/top" => "home#top"
  get "routes/do" => "routes#do"
  get "post/index" => "posts#index"
  get "/" => "home#top"
  get "/about" => "home#about"
end
