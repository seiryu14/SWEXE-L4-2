class TopController < ApplicationController
  def main
    if session[:login_uid]

       render :main
    else
       render :login
    end
    
  end

  def login

      if User.find_by_uid(params[:uid]) and User.find_by_pass(params[:pass])
        session[:login_uid] = params[:uid]
        redirect_to root_path
      
      else
      render :error  
      end
  end
  def destroy
    session[:login_uid] = nil
    redirect_to root_path
  end  
end
