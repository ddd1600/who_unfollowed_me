WhoUnfollowedMe::Application.routes.draw do
  resources :entries
  match "update" => "entries#index", :as => :update
  root :to => 'entries#index'
end
