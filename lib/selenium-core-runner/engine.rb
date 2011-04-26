#lib/authr/engine.rb
require "selenium-core-runner"
require "rails"

module SeleniumCoreRunner
  class Engine < Rails::Engine
    initializer "static assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
    #    paths.app << 'lib/app'
    #    paths.app.views << 'lib/app/views'
    #    paths.config.routes << "lib/config/routes.rb"
    #    paths.config.locales << 'lib/config/locales'
  end
end




