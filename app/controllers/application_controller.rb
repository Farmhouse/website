class ApplicationController < ActionController::Base
  protect_from_forgery

  def redirect_to_root_in_development
    if Rails.env.development?
      return redirect_to(root_path)
    end
  end
end
