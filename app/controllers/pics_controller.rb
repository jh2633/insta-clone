class PicsController < ApplicationController
  def new
    user_signed_in? ? (@pic = Pic.new) : (redirect_to action: "index")

  end

  def create
    @user = User.find(current_user.id)
    @pic = Pic.new(pic_params)
    @pic.user_id = current_user.id
    @pic.save
    redirect_to action: "index"
  end

  def index

  end

  private
  def pic_params
    params[:pic].permit(:image, :description)
  end
end
