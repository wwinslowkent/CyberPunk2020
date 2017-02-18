class Character < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :bodytype, null: false
      t.string :head, null: false
      t.string :torso, null: false
      t.string :rightarm, null: false
      t.string :leftarm, null: false
      t.string :rightleg, null: false
      t.string :leftleg, null: false
      t.string :hitpoints, null: false
      t.string :woundstatus, null: false
      t.string :stun, null: false

      t.timestamps
    end
  end
end
