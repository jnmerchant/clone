class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def user_params
    params.require(:user).permit(:name, :user_id, :nickname, :email)
  end
end
