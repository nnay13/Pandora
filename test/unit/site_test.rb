require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

