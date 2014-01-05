class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  private
  def set_locale
    I18n.locale = params[:locale] if params[:locale].present? || I18n.default_locale
  end

  def default_url_options(options={})
    logger.debug
    { :locale => I18n.locale }
  end  

end
