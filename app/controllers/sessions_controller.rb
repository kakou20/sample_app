class SessionsController < ApplicationController
  # Get login
  def new
  end

  # POST /login
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&& user.authenticate(params[:session][:password])
      # Success
      log_in user
      redirect_to user
    else
      # Failure
      # alert-danger -> 赤いろのフラッシュ
      flash.now[:danger] = 'Invalid email/password combination' # 本当は正しくない
      render 'new'
      # redirect_to vs render
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
