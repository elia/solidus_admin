# frozen_string_literal: true

require 'spree/core'
require 'solidus_admin'

module SolidusAdmin
  class Engine < Rails::Engine
    include SolidusSupport::EngineExtensions

    isolate_namespace SolidusAdmin

    engine_name 'solidus_admin'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
