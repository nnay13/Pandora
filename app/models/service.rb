class Service < ActiveRecord::Base
  has_many :utilisateurs, :order=>"nom"
  belongs_to :responsable, :class_name=>"Utilisateur", :foreign_key=>"utilisateur_id"
  belongs_to :etablissement 
end


# == Schema Information
#
# Table name: services
#
#  id               :integer(4)      not null, primary key
#  nom              :string(255)
#  utilisateur_id   :integer(4)
#  created_at       :datetime
#  updated_at       :datetime
#  etablissement_id :integer(4)
#

