class UsersController < ApplicationController
  def update_avatar
    byebug
    user = User.find(params[:id])
    render json: user
  end

  private

  def avatar_params
    params.require(:user).permit(:avatar)
  end

  def user_params
    params.require(:user).permit(avatar: [:url])
  end
end
