class CreateAluminiprofiles < ActiveRecord::Migration
  def self.up
    create_table :aluminiprofiles do |t|
      t.string :regid
      t.string :sex
      t.date :dob
      t.string :yearofjoining
      t.string :course
      t.string :mobile
      t.string :phone
      t.string :working
      t.string :workpo
      t.text :workaddress
      t.integer :workph
      t.string :maristat
      t.text :curadress
      t.text :pradress
      t.text :hobies
      t.text :sports
      t.text :goals

      t.timestamps
    end
  end

  def self.down
    drop_table :aluminiprofiles
  end
end
