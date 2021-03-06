# frozen_string_literal: true

module SolidusAdmin
  module ProductsHelper
    def show_rebuild_vat_checkbox?
      Spree::TaxRate.included_in_price.exists?
    end
  end
end
