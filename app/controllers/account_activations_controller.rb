class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      flash[:success] = "Activation is successful"
      redirect_to user
    else
      flash[:warning] = "Activation failed"
      redirect_to root_url
    end
  end
end
