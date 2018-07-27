class BlogController < ApplicationController
  def show
    @blog = Blog.find(params[:id])
    @posts = @blog.posts.all()
  end
end
