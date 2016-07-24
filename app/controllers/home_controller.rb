class HomeController < ApplicationController
  def show
    @user =session[:user_id].to_i
      if !@user.blank?
      
@user_detail = User.find_by_id( @user)
  end
  end
end
