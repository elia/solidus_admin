# frozen_string_literal: true

module SolidusAdmin
  module Taxons
    class AttachmentController < SolidusAdmin::BaseController
      def destroy
        taxonomy = Spree::Taxonomy.find(params[:taxonomy_id])
        taxon = taxonomy.taxons.find(params[:taxon_id])
        if taxon.destroy_attachment(params[:attachment_definition])
          flash[:success] = t('spree.successfully_removed', resource: params[:attachment_definition].titleize)
        else
          flash[:error] = t('spree.taxon_attachment_removal_error')
        end
        redirect_to edit_taxonomy_taxon_path(taxonomy, taxon.id)
      end
    end
  end
end
