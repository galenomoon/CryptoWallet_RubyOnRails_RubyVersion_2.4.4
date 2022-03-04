class ApplicationController < ActionController::Base #global controller
    before_action :set_locale
    def set_locale
        if params[:locale] #pega o o idioma pelo parâmetro na URL
            cookies[:locale] = params[:locale]
        end
        
        if cookies[:locale] #pega o idioma pelo cookie
            if I18n.locale != cookies[:locale]
            I18n.locale = cookies[:locale]      
            end  
        end
    end
end