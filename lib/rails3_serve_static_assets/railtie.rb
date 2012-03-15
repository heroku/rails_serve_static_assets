module Rails3ServeStaticAssets
  class Railtie < Rails::Railtie
    config.after_initialize do
      ::Rails.configuration.serve_static_assets = true
    end
  end
end
