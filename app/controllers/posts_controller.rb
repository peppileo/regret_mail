class PostsController < ApplicationController
  def new
  end

  # def index
  #   @posts = Post.all.order(created_at: :desc)
  # end


  def index
    if params[:latest]
      @posts = Post.latest
    elsif params[:old]
      @posts = Post.old
    else
      @posts = Post.latest
    end
  end

  def create
    @post = Post.new(name: params[:name], sub: params[:sub],content: params[:content], datetime: params[:datetime])
    @post.save
    redirect_to("/posts/index")
  end
end
