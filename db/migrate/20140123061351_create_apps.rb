class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.text :detailed_summary
    end
  end
end
