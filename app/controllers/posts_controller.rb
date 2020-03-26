class PostsController < ApplicationController

    def index
      @posts = Post.all.order("created_at DESC")
    end
  
    
    def show
      @post = Post.find(params[:id])
      @comments = @post.comments
    end
  
    def new
      @post = Post.new
    end
  
    def edit
      @post = Post.find(params[:id])
    end
  
   
    def create
      @post = Post.new(post_params)
        if @post.save
           redirect_to :action => 'index'

        else
          respond_to do |format|
          format.html { render :new }
          format.json { render json: @post.errors, status: :unprocessable_entity }
         end
        end
    end
  
   
    def update
      Rails.logger.debug params.inspect

      @post = Post.find(params[:id])
      respond_to do |format|
        if @post.update_attributes(post_params)
          format.html { redirect_to @post }
          format.json { render :show, status: :ok, location: @post }
        else
          format.html { render :edit }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def destroy
      @post = Post.find(params[:id])
      @post.destroy        
      redirect_to :action => 'index'
    end
  

 
  



    private
      def set_Post
        @post = Post.find(params[:id])
      end
    
    
    private  
      def post_params
        params.require(:post).permit(:title, :body, :user_id)
      end
  end
  