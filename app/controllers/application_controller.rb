class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  
  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource_or_scope)
    if resource.is_a?(Admin)
      new_admin_event_path
    else
      root_path
    end
  end
end
