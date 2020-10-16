# frozen_string_literal: true

module SolidusAdmin
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :auto_run_migrations, type: :boolean, default: false
      source_root File.expand_path('templates', __dir__)

      def mount_solidus_admin
        route 'mount SolidusAdmin::Engine, at: "/admin2"'
      end

      def copy_initializer
        template 'initializer.rb', 'config/initializers/solidus_admin.rb'
      end
    end
  end
end
