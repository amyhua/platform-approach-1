class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.string :key
      t.string :value
      t.string :format
      t.references :customer_app
      t.timestamps
    end

    add_index :configurations, :customer_app_id
  end
end
