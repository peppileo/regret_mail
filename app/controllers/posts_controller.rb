class PostsController < ApplicationController
  def new
    @submit_success = "no"
  end

  def index
    # 投稿が新しい順
    if params[:post_new]
      @posts = Post.post_new
      @summary = "投稿が新しい順"

    # 投稿が古い順
    elsif params[:post_old]
      @posts = Post.post_old
      @summary = "投稿が古い順"

    # 受信日時が新しい順
    elsif params[:receive_new]
      @posts = Post.receive_new
      @summary = "受信日時が新しい順"

    # 受信日時が古い順
    elsif params[:receive_old]
      @posts = Post.receive_old
      @summary = "受信日時が古い順"

    else
    # デフォルトは投稿が新しい順
      @posts = Post.post_new
      @summary = "投稿が新しい順"
    end
  end

  def create
    @post = Post.new(name: params[:name], sub: params[:sub],content: params[:content], datetime: params[:datetime])
    # 入力漏れがある場合はポップアップを表示させない
    if @post.save
      @submit_success = "ok"
    end
  end
end
