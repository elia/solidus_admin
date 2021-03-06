# frozen_string_literal: true

module SolidusAdmin
  class LocaleController < SolidusAdmin::BaseController
    def set
      locale = params[:switch_to_locale].to_s.presence

      if locale && I18n.available_locales.include?(locale.to_sym)
        I18n.locale = locale
        session[set_user_language_locale_key] = locale

        respond_to do |format|
          format.json { render json: { locale: locale, location: solidus_admin.admin_url } }
        end
      else
        respond_to do |format|
          format.json { render json: { locale: I18n.locale }, status: 404 }
        end
      end
    end
  end
end
