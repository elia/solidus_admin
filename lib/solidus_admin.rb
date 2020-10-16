# frozen_string_literal: true

require "active_record/railtie"
require "action_view/railtie"
require "sprockets/railtie"

require 'jquery-rails'
require 'coffee-rails'
require 'sassc-rails'
require 'handlebars_assets'
require 'font-awesome-rails'
require 'autoprefixer-rails'
require 'jbuilder'
require 'kaminari'
require 'responders'

require 'spree_core'
require 'spree_api'

require 'solidus_core'
require 'solidus_support'

require 'solidus_admin/configuration'
require 'solidus_admin/version'
require 'solidus_admin/engine'
require 'solidus_admin/callbacks'

module SolidusAdmin
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    alias config configuration

    def configure
      yield configuration
    end
  end
end
