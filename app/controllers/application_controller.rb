class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def self.user_signed_in?
    !!current_user
  end
  
  def authorize_admin 
    if !current_user.nil?
    else
      return unless !current_user.admin?
      redirect_to root_path, alert: 'Admins only, you have been redirected to HOME page.'
    end
  end
end
