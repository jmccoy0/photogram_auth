class MylikesController < ApplicationController
  def show
    @my_likes = current_user.liked_photos

    render("mylikes/show.html.erb")
  end
end
