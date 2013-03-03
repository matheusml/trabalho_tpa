class SessionsController < ApplicationController
  def new
	end

	def create
	  user = User.authenticate(params[:name], params[:password])
	  if user
	    session[:user_id] = user.id
	    redirect_to products_path, :notice => "Logado com sucesso."
	  else
	    redirect_to root_url, :notice => "Nome e/ou senha incorretos."
	  end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_url, :notice => "Saiu do sistema com sucesso."
	end

end
