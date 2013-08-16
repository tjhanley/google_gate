Rails.application.routes.draw do
  #get "/auth/:provider", as: "omni_auth"
  post "/auth/:provider/callback" => "google_gates#create", as: :google_gate_callback
  get "/auth/failure" => "google_gates#failure"
  resources :authentications, :only => [:index, :create, :destroy]
  resource :google_gates, only: [:index, :create, :destroy]
end
