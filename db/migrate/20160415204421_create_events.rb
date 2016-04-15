class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :country
      t.datetime :event_date
      t.text :description

      t.timestamps null: false
    end
  end
end
