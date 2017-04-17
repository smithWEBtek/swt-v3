class StaticController < ApplicationController

  def home
    render :home
  end
  def contact
    render :contact
  end
  def projects
    render :projects
  end
  def tools
    render :tools
  end
  def wiki
    render :wiki
  end
  def blog
    redirect_to posts_path
  end
end
