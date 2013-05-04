class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :track

  
  def track
    Tracker.create!(ip: request.remote_ip, url: request.fullpath, details: request.user_agent) unless params[:notracking].present?
  end

end
