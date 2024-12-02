Rails.application.routes.draw do
  get "home/index"
  # Root route for the home/index
  root "home#index" # This sets the homepage of the app to the HomeController's index action

  # Resources for characters and nested movies
  resources :characters do
    resources :movies do
      member do
        get :confirm_delete # For movies nested under characters
      end
    end

    member do
      get :confirm_delete # For characters' confirmation delete action
    end
  end
  

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Optional: Dynamic PWA files (if using Progressive Web App functionality)
  # Uncomment these if needed
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
