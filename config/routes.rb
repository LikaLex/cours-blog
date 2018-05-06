  Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
    root to: "posts#index"
    resources :posts
  mount Commontator::Engine => '/commontator'
  resources :posts do
    resources :comments
  end
  end

