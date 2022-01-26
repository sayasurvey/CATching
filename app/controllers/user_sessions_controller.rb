class UserSessionsController < ApplicationController
  def new
  end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to boards_path, success: t('.success')
    else
      flash.now[:danger] = t('.fail')
    end
  end

  def destroy
    logout
    redirect_to login_path, success: t('.success')
  end
end