class CommentsController < ApplicationController

    def index
        @comments = Comment.all.order("created_at DESC")
    end
    
    
    def show
        @comment = Comment.find(params[:id])
    end
    
    def new
    end
    
   
    
    
    def create

        @comment = Comment.new(comment_params)


        p @comment
        p @comment
        p @comment
        p @comment



        if @comment.save
            redirect_to proc { post_path(@comment.post_id) }

        else
            redirect_to posts_path()
        end
    end
    
    
 
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy        
        redirect_to :action => 'index'
    end
    

    
    




    private
        def set_Comment
        @comment = Comment.find(params[:id])
        end
    
    
    private  
        def comment_params
        params.require(:comment).permit(:title, :post_id, :user_id)
        end
    end
    