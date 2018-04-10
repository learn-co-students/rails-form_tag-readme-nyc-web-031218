class Post < ActiveRecord::Base

def index
  @posts = Post.all
end

def new
  @post = Post.create(post_title: params[:title], post_description: params[:description])
end

def create
  Post.create(title: params[:post][:title], description: params[:post][:description])
  redirect_to posts_path
end

end
