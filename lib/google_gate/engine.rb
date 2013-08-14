module GoogleGate
  class Engine < Rails::Engine

    initializer "google_gate.load_app_instance_data" do |app|
      GoogleGate.setup do |config|
        config.app_root = app.root
      end
    end

    initializer "google_gate.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end
end
