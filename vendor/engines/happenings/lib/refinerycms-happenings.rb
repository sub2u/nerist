require 'refinerycms-base'

module Refinery
  module Happenings
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "happenings"
          plugin.activity = {
            :class => Happening
          }
        end
      end
    end
  end
end
