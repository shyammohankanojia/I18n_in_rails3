class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale


  def set_locale
    default_locale = 'hi'
    locale = params[:locale] || default_locale
    session[:locale] = locale
    I18n.locale = locale.to_sym
  end
end
