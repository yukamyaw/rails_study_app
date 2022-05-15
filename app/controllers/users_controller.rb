class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def login
    @user = User.find_by(email: params[:email],
                        password: params[:password])
    if @user
        flash[:notice] = "ログイン成功"
        redirect_to("/post/index")
    else
        render("/users/login_form")
    end

  end
end
