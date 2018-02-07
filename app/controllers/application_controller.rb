class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private
  def require_sign_in
    unless current_user
      flash[:alert] = "You must be logged in to do that"
      redirect_to new_session_path
    end
  end
=begin  
  def avatar_url(size)
       gravatar_id = Digest::MD5::hexdigest(self.email).downcase
       "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
    end
=end

end
