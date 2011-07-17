class CreateUtilisateurs < ActiveRecord::Migration
  def self.up
    create_table :utilisateurs do |t|
      t.string :nom
      t.string :prenom
      t.string :login
      t.string :password
      t.string :email
      t.integer :service_id
      t.integer :site_id
      t.integer :etablissement_id
      t.string :telephone

      t.timestamps
    end
  end

  def self.down
    drop_table :utilisateurs
  end
end
