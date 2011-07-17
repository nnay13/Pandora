class AdminController < ApplicationController
  def login
    if request.post?
      utilisateur=Utilisateur.authenticate(params[:login],params[:password])
      if utilisateur
        session[:utilisateur_id]=utilisateur.id
        redirect_to(:controller=>"utilisateurs",:action=>"index")
      else
        flash.now[:notice]="Utilisateur/mot de passe incorrect"
      end
    end
  end

  def logout
    session[:utilisateur_id] = nil
    redirect_to(:action=>"login")
  end

end
