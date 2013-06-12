module RailsServeStaticAssets
  class Railtie < Rails::Railtie
    config.before_initialize do
      ::Rails.configuration.serve_static_assets = true
    end
  end
end
