class Utilisateur < ActiveRecord::Base
  before_save :init_valeurs
  belongs_to :service
  belongs_to :site
  belongs_to :fonction 
  belongs_to :parametre

  def init_valeurs
    if self.login == ""
      self.prenom.split('-').each{|el| self.login+=el[0]}
      self.login+=self.nom
    end
    if self.email == ""
      self.email = self.login+"@cos-crpf.com"
    end
    if self.fonction.nil?
      self.fonction=Fonction.find_by_intitule "neant"
    end
    self.photo="penguin.jpg" if self.photo.nil?
    self.email = self.login+"@cos-crpf.com" if self.email.nil?
    self.password="#####" if self.password.nil?
    self.login.downcase!
    self.email.downcase!

  end

  def self.authenticate(login, password)
    utilisateur=self.find_by_login(login)
    parametre=Parametre.find(:first)
    if utilisateur
      if password != utilisateur.password or not (parametre.admins.include? utilisateur)
        utilisateur=nil
      end
    end
    utilisateur
  end
end



# == Schema Information
#
# Table name: utilisateurs
#
#  id               :integer(4)      not null, primary key
#  nom              :string(255)
#  prenom           :string(255)
#  login            :string(255)
#  password         :string(255)
#  email            :string(255)
#  service_id       :integer(4)
#  site_id          :integer(4)
#  etablissement_id :integer(4)
#  telephone        :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  fonction_id      :integer(4)
#  parametre_id     :integer(4)
#  photo            :string(255)
#

