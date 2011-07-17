require 'test_helper'

class UtilisateurTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
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

