Rails.application.routes.draw do
root "articles#index"

# get "/articles", to: "articles#index" 
# get "/articles/:id", to: "articles#show"

# Here we can replace these get routes with resources
resources :articles
end
