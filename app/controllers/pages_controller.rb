class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @page_title = 'About Me'
  end

  def contact
    @page_title = 'Contact Me'
  end
end
