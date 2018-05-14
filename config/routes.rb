  Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
    root to: "posts#index"

  mount Commontator::Engine => '/commontator'
  resources :posts do
    collection do
      get 'search'
    end
    resources :comments
  end
  end

