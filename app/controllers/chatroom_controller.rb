class ChatroomController < ApplicationController
    before_action :user_signed_in?
    
    def chat
        @message = Message.new
        @messages = Message.all
    end
end
