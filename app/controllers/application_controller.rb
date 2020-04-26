class ApplicationController < ActionController::Base
    before_action :set_current_user, :get_user_notifications

    def set_current_user
        @current_user = User.find_by(id: session[:user_id]);
    end

    def get_user_notifications
        @notifications = Notification.where(post_user_id: session[:user_id])
        @new_notice = @notifications.where(is_looked: false)
    end
end
