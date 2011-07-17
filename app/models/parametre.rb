class Parametre < ActiveRecord::Base
has_many :admins, :class_name=>"Utilisateur", :foreign_key=>"parametre_id", :order=>"nom" 
end

# == Schema Information
#
# Table name: parametres
#
#  id         :integer(4)      not null, primary key
#  tooltip    :boolean(1)
#  created_at :datetime
#  updated_at :datetime
#

