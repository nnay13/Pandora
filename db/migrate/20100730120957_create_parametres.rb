class CreateParametres < ActiveRecord::Migration
  def self.up
    create_table :parametres do |t|
      t.boolean :tooltip

      t.timestamps
    end
  end

  def self.down
    drop_table :parametres
  end
end
