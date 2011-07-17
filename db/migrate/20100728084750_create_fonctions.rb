class CreateFonctions < ActiveRecord::Migration
  def self.up
    create_table :fonctions do |t|
      t.string :intitule

      t.timestamps
    end
  end

  def self.down
    drop_table :fonctions
  end
end
