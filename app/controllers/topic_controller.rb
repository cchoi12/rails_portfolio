class TopicController < ApplicationController
  before_action :load_topic, only: [:show]

  layout "blog"

  def index
    @topics = Topic.all
  end

  def show
  end

  private

  def load_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title)
  end
end
