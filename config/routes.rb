Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  devise_scope :user do
  	get '/register', to: 'devise/registrations#new', as: :register
  	get '/login', to: 'devise/sessions#new', as: :login
  	get '/logout', to: 'devise/sessions#destroy', as: :logout
  end
  resources :statuses

  root to: 'statuses#index'



end


#   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                 statuses GET    /statuses(.:format)            statuses#index
#                          POST   /statuses(.:format)            statuses#create
#               new_status GET    /statuses/new(.:format)        statuses#new
#              edit_status GET    /statuses/:id/edit(.:format)   statuses#edit
#                   status GET    /statuses/:id(.:format)        statuses#show
#                          PATCH  /statuses/:id(.:format)        statuses#update
#                          PUT    /statuses/:id(.:format)        statuses#update
#                          DELETE /statuses/:id(.:format)        statuses#destroy
#                     root GET    /                              statuses#index