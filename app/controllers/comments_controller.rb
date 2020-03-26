class CommentsController < ApplicationController

    
    def new
    end    
    
    def create

        @comment = Comment.new(comment_params)

        if @comment.save
            redirect_to proc { post_path(@comment.post_id) }

        else
            redirect_to posts_path()
        end
        
    end
    
    
 
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy        
        redirect_to proc { post_path(@comment.post_id) }
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
    