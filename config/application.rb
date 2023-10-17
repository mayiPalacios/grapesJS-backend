require_relative "boot"

require "rails/all"





# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module Grape

  class Application < Rails::Application
    
    config.load_defaults 7.0
       
    
    # config/initializers/cors.rb
    Rails.application.config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*' # Puedes reemplazar '*' con el dominio específico o los dominios permitidos.
        resource '*', headers: :any, methods: %i[get post put patch delete options]
      end
    end
    

    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
