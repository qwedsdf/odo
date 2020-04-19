class LikesController < ApplicationController

    def create
        @like = Like.new(user_id:@current_user.id,post_id:params[:post_id])
        @like.save
        @post_id = params[:post_id]
        if params[:type] == 'edit'
            redirect_to("/posts/#{@post_id}/show")
            return    
        end
        redirect_to("/posts/#{@post_id}/index")
    end

    def destroy
        @like = Like.find_by(user_id:@current_user.id,post_id:params[:post_id])
        @like.destroy
        @post_id = params[:post_id]
        if params[:type] == 'edit'
            redirect_to("/posts/#{@post_id}/show")
            return
        end
        redirect_to("/posts/#{@post_id}/index")
    end
end
