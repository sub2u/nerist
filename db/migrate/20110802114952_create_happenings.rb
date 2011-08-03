class CreateHappenings < ActiveRecord::Migration

  def self.up
    create_table :happenings do |t|
      t.string :title
      t.string :url
      t.string :branch
      t.text :description
      t.integer :position

      t.timestamps
    end

    add_index :happenings, :id

    load(Rails.root.join('db', 'seeds', 'happenings.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "happenings"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/happenings"})
    end

    drop_table :happenings
  end

end
