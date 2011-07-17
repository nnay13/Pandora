class AddParametresToUtilisateurs < ActiveRecord::Migration
  def self.up
    add_column :utilisateurs, :parametre_id, :integer
  end

  def self.down
    remove_column :utilisateurs, :parametre_id
  end
end
