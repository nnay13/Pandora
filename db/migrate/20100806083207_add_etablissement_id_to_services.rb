class AddEtablissementIdToServices < ActiveRecord::Migration
  def self.up
    add_column :services, :etablissement_id, :integer
  end

  def self.down
    remove_column :services, :etablissement_id
  end
end
