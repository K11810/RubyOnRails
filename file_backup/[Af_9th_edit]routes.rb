Rails.application.routes.draw do
  resources :exercises do
    collection do
      post :confirm
    end
  end
end
