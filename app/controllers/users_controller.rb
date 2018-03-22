class UsersController < ApplicationController
  def update_avatar
    byebug
    user = User.find(3)
    image = Image.create(imageable_id: 3,
                         imageable_type: 'User',
                         remote_file_url: params[:remote_file_url])

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
