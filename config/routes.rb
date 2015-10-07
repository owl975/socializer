Rails.application.routes.draw do
  get 'profiles/show'

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


#  Prefix Verb   URI Pattern                    Controller#Action
#         new_view_session GET    /views/sign_in(.:format)       devise/sessions#new
#             view_session POST   /views/sign_in(.:format)       devise/sessions#create
#     destroy_view_session DELETE /views/sign_out(.:format)      devise/sessions#destroy
#            view_password POST   /views/password(.:format)      devise/passwords#create
#        new_view_password GET    /views/password/new(.:format)  devise/passwords#new
#       edit_view_password GET    /views/password/edit(.:format) devise/passwords#edit
#                          PATCH  /views/password(.:format)      devise/passwords#update
#                          PUT    /views/password(.:format)      devise/passwords#update
# cancel_view_registration GET    /views/cancel(.:format)        devise/registrations#cancel
#        view_registration POST   /views(.:format)               devise/registrations#create
#    new_view_registration GET    /views/sign_up(.:format)       devise/registrations#new
#   edit_view_registration GET    /views/edit(.:format)          devise/registrations#edit
#                          PATCH  /views(.:format)               devise/registrations#update
#                          PUT    /views(.:format)               devise/registrations#update
#                          DELETE /views(.:format)               devise/registrations#destroy
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
#                 register GET    /register(.:format)            devise/registrations#new
#                    login GET    /login(.:format)               devise/sessions#new
#                   logout GET    /logout(.:format)              devise/sessions#destroy
#                 statuses GET    /statuses(.:format)            statuses#index
#                          POST   /statuses(.:format)            statuses#create
#               new_status GET    /statuses/new(.:format)        statuses#new
#              edit_status GET    /statuses/:id/edit(.:format)   statuses#edit
#                   status GET    /statuses/:id(.:format)        statuses#show
#                          PATCH  /statuses/:id(.:format)        statuses#update
#                          PUT    /statuses/:id(.:format)        statuses#update
#                          DELETE /statuses/:id(.:format)        statuses#destroy
#                     root GET    /                              statuses#index