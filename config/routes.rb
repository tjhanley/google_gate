Rails.application.routes.draw do
  post "/auth/:provider/callback" => "google_gates#create"
  get "/auth/failure" => "google_gates#failure"
  resources :authentications, :only => [:index, :create, :destroy]
  resource :google_gates, only: [:index, :create, :destroy]
end
