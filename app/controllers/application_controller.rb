class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :recent_posts

  private
  
  def recent_posts
    Post.recent
  end
end
