# frozen_string_literal: true

require 'solidus_core'
require 'solidus_support'

require 'solidus_admin/configuration'
require 'solidus_admin/version'
require 'solidus_admin/engine'

module SolidusAdmin
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield configuration
    end
  end
end
