class PostsController < ApplicationController
  def index
   @post=Post.new
   @posts=Post.all
   #p "user info============="
   #puts current_user.posts
   #p "user info============="
  end
  def create
    post =current_user.posts.build(post_params)
      if post.save
        #session[:user_id]=user.id
        redirect_to root_path
      else
        render :new
      end
  end
  def show
    @post=Post.find(params[:id])
  end
  private
  def post_params
       params.require(:post).permit(:title, :content)
  end
end
