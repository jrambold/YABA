class PostController < ApplicationController
  def show
    @blog = Post.find(params[:id])
  end
end
