class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    # @photos = Photo.where(:photo_id => current_user)
    @photos = current_user.photos
    @users = User.all

    render("users/show.html.erb")
  end
end
