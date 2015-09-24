Rails.application.routes.draw do
  resources :statuses


end


# Prefix Verb   URI Pattern                  Controller#Action
#    statuses GET    /statuses(.:format)          statuses#index
#             POST   /statuses(.:format)          statuses#create
#  new_status GET    /statuses/new(.:format)      statuses#new
# edit_status GET    /statuses/:id/edit(.:format) statuses#edit
#      status GET    /statuses/:id(.:format)      statuses#show
#             PATCH  /statuses/:id(.:format)      statuses#update
#             PUT    /statuses/:id(.:format)      statuses#update
#             DELETE /statuses/:id(.:format)      statuses#destroy