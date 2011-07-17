class AddPhotoToUtilisateurs < ActiveRecord::Migration
  def self.up
    add_column :utilisateurs, :photo, :string
  end

  def self.down
    remove_column :utilisateurs, :photo
  end
end
