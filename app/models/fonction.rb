class Fonction < ActiveRecord::Base
  has_many :utilisateurs, :order=>"nom"
end

# == Schema Information
#
# Table name: fonctions
#
#  id         :integer(4)      not null, primary key
#  intitule   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

