Rails.application.routes.draw do
  devise_for :articles
  root "articles#index"

#   resources :articles do
#     member do
#       get "routing1", to: "routing1"
#     end
#     resources :comments
#   end
# end

# resources :articles do
#   get "routing1", on: :member
#   resources :comments
# end
# end
  devise_for :articles
#

resources :articles do
  get "routing1", on: :collection
  resources :comments, shallow: :true
end
end