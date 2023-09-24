class PostsController < ApplicationController
  def new
  end

  def index

  end

  def create
    redirect_to("/posts/index")
  end
end
