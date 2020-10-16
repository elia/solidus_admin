# frozen_string_literal: true

module SolidusAdmin
  class OptionValuesController < SolidusAdmin::BaseController
    def destroy
      option_value = Spree::OptionValue.find(params[:id])
      option_value.destroy
      render plain: nil
    end
  end
end
