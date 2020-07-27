Rails.application.routes.draw do
<<<<<<< HEAD
  root to: 'articles#index'
=======
>>>>>>> 4c02f2b3cd35c48751a7f46b54e5849a555e8a91
  resources :articles
  resources :articles do
    resources :comments
  end
end
