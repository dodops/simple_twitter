class PagesController < ApplicationController
  def home
    @title = "Home Page"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
  end

  def contact
    @title = "Contact Page"
  end

  def about
    @title = "About Page"
  end

  def help
    @title = "Help Page"
  end

end
