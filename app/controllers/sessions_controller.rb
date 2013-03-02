class SessionsController < ApplicationController
  def new
	end

	def create
	  user = User.authenticate(params[:email], params[:password])
	  if user
	    session[:user_id] = user.id
	    redirect_to root_url, :notice => "Logado com sucesso."
	  else
	    flash.now.alert = "Nome e/ou senha inválidos"
	    render "new"
	  end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_url, :notice => "Saiu do sistema com sucesso."
	end

end
