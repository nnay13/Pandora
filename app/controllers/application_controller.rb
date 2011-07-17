# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  before_filter :authorize, :except=>:login
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  layout "default_layout"
  after_filter :retourAction
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  protected
  
  def listes_deroulantes
    sites=Site.find(:all, :order=>'nom').map{ |s| [s.nom.capitalize,s.id] }
    sites.insert(0, ["----",nil]) 
    services=Service.find(:all, :order=>'nom').map{ |s| [s.nom,s.id] }
    services.insert(0, ["----",nil]) 
    etablissements=Etablissement.find(:all, :order=>'nom').map{ |s| [s.nom,s.id] }
    etablissements.insert(0, ["----",nil]) 
    fonctions=Fonction.find(:all, :order=>"intitule").map{ |s| [s.intitule.capitalize,s.id] }
    fonctions.insert(0,["----",nil])
    return services,sites,etablissements,fonctions
  end

  def authorize
    unless Utilisateur.find_by_id(session[:utilisateur_id])
      redirect_to :controller=>"admin",:action=>"login"
    end
  end
  def retourAction
    session[:retour]=request.request_uri
  end
end
