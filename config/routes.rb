PhoenixfamilySite::Application.routes.draw do
  resources :stories
  root "pages#home"
  get "home", to: "pages#home", as: "home"
  get "about", to: "about_pages#about", as: "about"
  get "inside", to: "pages#inside", as: "inside"
  get "/contact", to: "pages#contact", as: "contact"
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"

  # get "stories", to: "pages#posts", as: "posts"
  # get "posts/:id", to: "pages#show_post", as: "post"
  devise_for :users

  namespace :admin do
    root "base#index"
    resources :users
    get "posts/drafts", to: "posts#drafts", as: "posts_drafts"
    get "posts/dashboard", to: "posts#dashboard", as: "posts_dashboard"
    resources :posts
  end

  resource :successes

end
