# frozen_string_literal: true

module SolidusAdmin
  class TaxonomiesController < ResourceController
    private

    def location_after_save
      if @taxonomy.created_at == @taxonomy.updated_at
        edit_taxonomy_url(@taxonomy)
      else
        taxonomies_url
      end
    end
  end
end
