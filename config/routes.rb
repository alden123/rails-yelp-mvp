Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews
  end
end


#   do
#    member do
#     get 'rating'
#     to: "restaurants#rating"
#     end
#   end
# end
