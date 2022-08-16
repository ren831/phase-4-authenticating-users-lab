class SessionsController < ApplicationController
  def create
  user = User.find_by(username: params[:username])
  session[:user] = user
  render json: user
  end

  def destroy
    session.delete :user
    head :no_content
  end

end