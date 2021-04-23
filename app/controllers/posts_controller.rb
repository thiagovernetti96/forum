class PostsController < ApplicationController
    def index
        @posts = Post.all.order("created_at DESC")
         end
    end
   
    def new
     @post = Post.new
    end 
       
    def edit
    end
    
    def show
     @post = Post.find(params[:id])
    end
    
    def update
     if @post.update(post_params)
        redirect_to @post
     else
        render 'edit'
     end
    end
    
    def destroy
     @post.destroy
       redirect_to root_path
    end
    
    def create
     @post = Post.new(post_params)
     if @post.save
        redirect_to @post
       else
        render 'new'
       end
    end

    private def post_params
        params.require(:post).permit(:title, :content)
    end
    
    def find_post
        @post = Post.find(params[:id])
    end

   