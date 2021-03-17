class ChatroomController < ApplicationController
    before_action :user_signed_in?
    
    def chat
        @messages = Message.new
        @message = Message.all
    end
end 
