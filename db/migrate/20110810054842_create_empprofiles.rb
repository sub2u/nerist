class CreateEmpprofiles < ActiveRecord::Migration
  def self.up
    create_table :empprofiles do |t|
      t.string :empid
      t.string :sex
      t.date :dob
      t.string :mobile
      t.string :phone
      t.string :qulification
      t.text :curadress
      t.text :pradress
      t.text :hobies

      t.timestamps
    end
  end

  def self.down
    drop_table :empprofiles
  end
end
