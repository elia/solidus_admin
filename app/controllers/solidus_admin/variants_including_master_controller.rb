# frozen_string_literal: true

module SolidusAdmin
  class VariantsIncludingMasterController < VariantsController
    def model_class
      Spree::Variant
    end

    def object_name
      "variant"
    end
  end
end
