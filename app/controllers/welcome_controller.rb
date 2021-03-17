class WelcomeController < ApplicationController
    def home
        @articles = Article.all
        @users = User.all
    end

    def search
        if params[:search].blank?  
            redirect_to(root_path, alert: "Please enter the keywords!") and return
        else  
            @parameter = params[:search].downcase
            @results = Article.all.where("title LIKE :search", search: @parameter)
        end  
    end
end
