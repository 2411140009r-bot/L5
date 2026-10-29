class TopController < ApplicationController
  def main
    render 'login_form'
  end

  def login
    user = User.find_by(uid: params[:uid])
    if user && user.authenticate(params[:pass])
      session[:login_uid] = user.uid
      redirect_to top_main_path
    else
      render 'login'
    end
  end
end