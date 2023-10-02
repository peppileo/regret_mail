class PostsController < ApplicationController
  def new
  end

  # def index
  #   @posts = Post.all.order(created_at: :desc)
  # end


  def index
    # 新しい順
    if params[:latest]
      @posts = Post.latest
      @summary = "投稿が新しい順"
    # 古い順
    elsif params[:old]
      @posts = Post.old
      @summary = "投稿が古い順"
    else
    # デフォルトは新しい順
      @posts = Post.latest
      @summary = "投稿が新しい順"
    end
  end

  def create
    @post = Post.new(name: params[:name], sub: params[:sub],content: params[:content], datetime: params[:datetime])
    @post.save
    redirect_to("/posts/index")
  end
end
