class CreateFacultiprofiles < ActiveRecord::Migration
  def self.up
    create_table :facultiprofiles do |t|
      t.string :empid
      t.string :sex
      t.date :dob
      t.string :deportment
      t.string :mobile
      t.string :phone
      t.string :qulification
      t.text :subjects
      t.text :curadress
      t.text :pradress
      t.text :hobies
      t.text :sports
      t.text :goals

      t.timestamps
    end
  end

  def self.down
    drop_table :facultiprofiles
  end
end
