class CreateCustomerApps < ActiveRecord::Migration
  def change
    create_table :customer_apps do |t|
      t.string :site_title
      t.string :name
      t.string :slug
      t.string :custom_url
      t.text :description
      t.string :contact_name
      t.string :contact_email
      t.references :customer
      t.references :app
      t.timestamps
    end
    add_index :customer_apps, :app_id
    add_index :customer_apps, :customer_id
  end
end
