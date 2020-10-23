# frozen_string_literal: true

module SolidusAdmin
  class GeneralSettingsController < SolidusAdmin::BaseController
    def edit
      redirect_to stores_path
    end
  end
end
