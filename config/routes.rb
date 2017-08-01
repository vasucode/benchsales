Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'login', to: 'pages#login'
  resources :contacts
  resources :profiles
  resources :hot_lists
  resources :job_posts
  resources :job_apply
  # get 'job_posts/new'
  #
  # get 'job_posts/create'
  #
  # get 'job_posts/index'
  #
  # get 'job_posts/show'
  #
  # # get 'hot_lists/new'
  #
  # get 'hot_lists/index'
  #
  # get 'hot_lists/show'
  #
  # get 'hot_lists/create'
  # get 'job_apply/new'
  #
  # get 'job_apply/index'
  #
  # get 'job_apply/create'
  #
  # get 'job_apply/show'


end
