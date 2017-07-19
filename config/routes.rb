Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :message_threads, only: [:index, :update] do
    resources :messages, only: [:index, :create]
  end
end
