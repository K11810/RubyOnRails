Rails.application.routes.draw do
  get "/" => "home#top"
  resources :exercises do
    collection do
      post :confirm
    end
  end
end
