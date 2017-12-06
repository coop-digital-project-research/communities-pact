class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_source_cookie


  def set_source_cookie
    unless params[:for].blank?
      cookies[:source] = params[:for]
    end
  end

  def request_source
    cookies[:source] || 'none'
  end
end
