class MylikesController < ApplicationController
  def show
    @my_likes = current_user.liked_photos
    @users = User.all

    render("mylikes/show.html.erb")
  end
end
