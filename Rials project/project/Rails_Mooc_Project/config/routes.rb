Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :lectures do
    member do
      put "Like", to: "lectures#upvote"
      put "Dislike", to: "lectures#downvote"
    end
  
  end
  resources :courses
  mount Commontator::Engine => '/commontator'
  devise_for :users
  



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/welcome/home', to: 'welcome#home'
  
 


end
