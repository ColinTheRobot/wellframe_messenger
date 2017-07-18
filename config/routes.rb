Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :message_thread do
    resource :messages, only: [':index', ':create']
  end
  # resources :messge_threads, only: [':index', ':edit']
end
