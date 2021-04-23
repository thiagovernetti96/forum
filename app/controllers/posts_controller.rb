class PostsController < ApplicationController
    def index
    end
   
    def new
        @post = Post.new
    end 
       
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    def create
        @post = Post.new(post_params)
    end

    private def post_params
        params.require(:post).permit(:title, :content)
    end
    
    def find_post
        @post = Post.find(params[:id])
       end

end

