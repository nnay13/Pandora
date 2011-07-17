require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

