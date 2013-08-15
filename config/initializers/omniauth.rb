require 'omniauth'
require 'omniauth-google-apps'
Rails.application.config.middleware.use OmniAuth::Builder do
  # domain is optional attribute
  provider :google_apps, domain: ENV['GOOGLE_GATE_DOMAIN']
end
