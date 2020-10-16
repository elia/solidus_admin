# frozen_string_literal: true

module SolidusAdmin
  class VariantPropertyRuleValuesController < ResourceController
    belongs_to 'spree/product', find_by: :slug
  end
end
