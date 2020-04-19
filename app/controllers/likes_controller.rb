class LikesController < ApplicationController

    def create
        @post_id = params[:post_id]
        @like = Like.new(user_id:@current_user.id,post_id:@post_id)
        @like.save
        @post =  Post.find_by(id:@post_id)
        if Notification.find_by(post_id:@post_id,do_user_id: @current_user.id) == nil
            @notice = Notification.new(post_id:@post_id, post_user_id: @post.user_id, do_user_id: @current_user.id, is_looked: false)
            @notice.save
        end
        if params[:type] == 'edit'
            redirect_to("/posts/#{@post_id}/show")
            return    
        end
        redirect_to("/posts/notType/index")
    end

    def destroy
        @like = Like.find_by(user_id:@current_user.id,post_id:params[:post_id])
        @like.destroy
        @post_id = params[:post_id]
        @post =  Post.find_by(id:@post_id)
        @notice = Notification.new(post_id:@post_id, post_user_id: @post.user_id, do_user_id: @current_user.id, is_looked: false)
        if params[:type] == 'edit'
            redirect_to("/posts/#{@post_id}/show")
            return
        end
        redirect_to("/posts/notType/index")
    end
end
