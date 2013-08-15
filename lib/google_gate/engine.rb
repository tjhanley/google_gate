module GoogleGate
  class Engine < Rails::Engine

    initializer "google_gate.load_app_instance_data" do |app|
      GoogleGate.setup do |config|
        #config.gate_keeper_required? = true
      end
    end

    initializer "google_gate.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

    #initializer 'google_gate.controller' do |app|
    #  ActiveSupport.on_load(:action_controller) do
    #    include GoogleGatesController
    #    include ApplicationController
    #  end
    #end
  end
end
