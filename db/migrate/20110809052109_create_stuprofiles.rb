class CreateStuprofiles < ActiveRecord::Migration
  def self.up
    create_table :stuprofiles do |t|
      t.string :userid
      t.string :branch
      t.integer :mobile
      t.integer :phone
      t.text :curaddress
      t.text :peradress
      t.text :sports
      t.text :goals
      t.text :hobbyes

      t.timestamps
    end
  end

  def self.down
    drop_table :stuprofiles
  end
end
