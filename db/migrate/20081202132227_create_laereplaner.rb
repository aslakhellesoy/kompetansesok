class CreateLaereplaner < ActiveRecord::Migration
  def self.up
    create_table :laereplaner do |t|
      t.string :kode
      t.text :tittle

      t.timestamps
    end
  end

  def self.down
    drop_table :laereplaner
  end
end
