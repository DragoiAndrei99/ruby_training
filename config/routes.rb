Rails.application.routes.draw do
  resources :echipaments

  get "up" => "rails/health#show", as: :rails_health_check

  root "echipaments#index"
end
