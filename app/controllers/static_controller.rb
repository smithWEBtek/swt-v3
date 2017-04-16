class StaticController < ApplicationController

  def home
    render :home
  end

  def about
    render 'static/about'
  end

  def blog
    render 'static/blog'
  end

  def projects
    render 'static/projects'
  end

  def wiki
    render 'static/wiki'
  end

  def tools
    render 'static/tools'
  end

  def contact
    render 'static/contact'
  end
end
