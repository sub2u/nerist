class CreateNewses < ActiveRecord::Migration

  def self.up
    create_table :newses do |t|
      t.string :title
      t.string :branch
      t.text :description
      t.integer :position

      t.timestamps
    end

    add_index :newses, :id

    load(Rails.root.join('db', 'seeds', 'newses.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "newses"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/newses"})
    end

    drop_table :newses
  end

end
