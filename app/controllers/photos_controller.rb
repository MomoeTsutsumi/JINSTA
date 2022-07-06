class PhotosController < ApplicationController
    def index
        @current_user = User.find_by(id: session[:user_id])
        
    end

    def
         new
        @current_user = User.find_by(id: session[:user_id])
        @photo = @current_user.photos.new
    end

    def create
        @current_user = User.find_by(id: session[:user_id])
        @photo = @current_user.photos.new(photo_params)
        if @photo.save
            redirect_to("/photos")
        else
            render("photos/new")
            
        end
    end

    private

    def photo_params
        params.require(:photo).permit(:caption, :image)
    end


    end

