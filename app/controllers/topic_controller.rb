class TopicController < ApplicationController
  before_action :set_sidebar_topics
  before_action :load_topic, only: [:show]

  layout "blog"

  def index
    @topics = Topic.all
  end

  def show
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent_blogs.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.published.recent_blogs.page(params[:page]).per(5)
    end
  end

  private

  def set_sidebar_topics
    @side_bar_topics = Topic.with_blogs
  end

  def load_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title)
  end
end
