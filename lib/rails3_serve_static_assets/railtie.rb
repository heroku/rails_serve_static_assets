module Rails3ServeStaticAssets
  class Railtie < Rails::Railtie
    config.serve_static_assets = true
  end
end
