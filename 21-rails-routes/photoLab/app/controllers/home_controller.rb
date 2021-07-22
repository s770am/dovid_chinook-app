class HomeController < ApplicationController

    def welcome
        @message = "Welcome to my web app"
    end

    def about
        @about = "I am a programmer"
        render :hello
    end
end
