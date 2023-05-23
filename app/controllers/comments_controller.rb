class CommentsController < ApplicationController
    def create
        @list = List.find(params[:list_id])
        @comment = @list.comments.create(params[:comment].permit(:name, :body))
        redirect_to list_path(@list)
    end
   def destroy
        @list = List.find(params[:list_id])
        @comment = @list.comments.find(params[:id])
        @comment.destroy
        redirect_to list_path(@list)
   end
end
