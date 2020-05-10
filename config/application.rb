require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Blogger
  class Application < Rails::Application
    config.load_defaults 5.2
    config.assets.initialize_on_precompile = false
  end
end
