class CreateEtablissements < ActiveRecord::Migration
  def self.up
    create_table :etablissements do |t|
      t.string :nom
      t.integer :utilisateur_id

      t.timestamps
    end
  end

  def self.down
    drop_table :etablissements
  end
end
