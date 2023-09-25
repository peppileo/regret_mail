class PostsController < ApplicationController
  def new
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    @post = Post.new(name: params[:name], sub: params[:sub],content: params[:content], datetime: params[:datetime])
    @post.save
    redirect_to("/posts/index")
  end
end
