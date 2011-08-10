class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.timestamp :at
      t.string :branch
      t.string :userid
      t.boolean :employee
      t.boolean :student
      t.boolean :faculty
      t.boolean :alumini
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
