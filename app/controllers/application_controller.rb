class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def enable_search
    @enable_search = true
  end
end
