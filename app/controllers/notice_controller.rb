class NoticeController < ApplicationController
    def looked
        @notifications.each do |notice|
            notice.is_looked = true
            notice.save
        end
    end
end
