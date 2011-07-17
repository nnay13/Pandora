class AddFonctionIdToUtilisateurs < ActiveRecord::Migration
  def self.up
    add_column :utilisateurs, :fonction_id, :integer
  end

  def self.down
    remove_column :utilisateurs, :fonction_id
  end
end
