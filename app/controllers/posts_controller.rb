class PostsController < ApplicationController
  def new
  end

  def index

  end

  def create
    @post = Post.new(name: params[:name], sub: params[:sub],content: params[:content], datetime: params[:datetime])
    @post.save
    redirect_to("/posts/index")
  end
end
