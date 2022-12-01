Rails.application.routes.draw do

  root "articles#index"
  # get "/articles", to: "articles#index" 
  # get "/articles/:id", to: "articles#show"

  get "/articles/:article_id/comments", to: "comments#index"

  # Here we can replace these get routes with resources
  resources :articles do
    resources :comments
  end
end
