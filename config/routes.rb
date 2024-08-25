Rails.application.routes.draw do
  # App routes
  namespace :api do
    namespace :v1 do
      resources :artists
      resources :sounds
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
