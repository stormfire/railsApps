class UserSessionsController < ApplicationController
  before_action :require_user, :only => :destroy
  before_action :require_no_user, :only => [:new, :create]

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new params.require(:user_session)
                                    .permit(:email, :password)
    if @user_session.save
      goto_landing_page
    else
      render :action => :new
    end
  end

  def destroy
    current_user_session.destroy
    redirect_to new_user_session_path
  end
end
