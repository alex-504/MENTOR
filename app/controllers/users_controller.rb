class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    redirect_to consultation_path(params[:consultation_id])

  end

  private

  def user_params
    params.require(:user).permit(:mentor_id, tag_ids: [] )
  end

end
