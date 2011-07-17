class Site < ActiveRecord::Base
  has_many :utilisateurs, :order=>"nom"
  belongs_to :responsable, :class_name=>"Utilisateur", :foreign_key=>"utilisateur_id"
end

# == Schema Information
#
# Table name: sites
#
#  id             :integer(4)      not null, primary key
#  nom            :string(255)
#  utilisateur_id :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

