class SessionsController < ApplicationController
  
  def new
    # if session[:name] != "" || session[:name] != nil
    #   redirect_to(show_session_path)
    # end
  end

  def create
    session[:name] = params[:name]
    if params[:name] == nil || params[:name] == ""
      redirect_to("/")
    else 
      redirect_to(show_session_path)
    end
  end

  def show
    if !require_login
      redirect_to("/")
    end
  end

  def destroy
    session.delete :name
    redirect_to(new_session_path)
  end
end
