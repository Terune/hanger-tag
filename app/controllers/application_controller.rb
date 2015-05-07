class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  before_filter :default_format_json

  # Set format to xml unless client requires a specific format
  # Works on Rails 3.0.9
  def default_format_json
    request.format = "json" unless params[:format]
  end
end
