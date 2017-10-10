class SponsoredPostsController < ApplicationController
  def create
    @sponsored_post = SponsoredPost.new
    @sponsored_post.title = params[:sponsored_post][:title]
    @sponsored_post.body = params[:sponsored_post][:body]
    @topic = Topic.find(params[:topic_id])
    @sponsored_post.topic = @topic
    if @sponsored_post.save
      flash[:notice] = "sponsored_post was saved!"
      redirect_to [@topic,@sponsored_post]
#      redirect_to @sponsored_post
    else
      flash.new[:alert] = "Alert. Alert. Error saving sponsored post. Try again."
      render :new
    end
  end

  def show
    @sponsored_post = SponsoredPost.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @sponsored_post = SponsoredPost.new
  end

  def edit
    @sponsored_post = SponsoredPost.find(params[:id])
  end
end
