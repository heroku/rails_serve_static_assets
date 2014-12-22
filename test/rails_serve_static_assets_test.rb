ENV['RAILS_ENV'] = 'test'

require 'bundler/setup'
require 'minitest/autorun'
require 'rails/all'
require 'rails_serve_static_assets'

class DummyApp < Rails::Application
  config.eager_load = false

  if Rails.version >= '4.2.0'
    config.serve_static_files = false
  else
    config.serve_static_assets = false
  end
end

DummyApp.initialize!

describe RailsServeStaticAssets do
  it 'enables serving static files' do
    if Rails.version >= '4.2.0'
      Rails.configuration.serve_static_files.must_equal true
    else
      Rails.configuration.serve_static_assets.must_equal true
    end
  end

  it 'disables X-Sendfile headers' do
    Rails.configuration.action_dispatch.x_sendfile_header.must_be_nil
  end
end
