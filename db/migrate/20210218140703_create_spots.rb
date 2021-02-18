class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string  :shop_name,         null: false
      t.integer :genre_id,          null: false
      t.string  :address,           null: false
      t.string  :phone_number,      null: false
      t.string  :opening_hours,     null: false
      t.string  :non_business_day,  null: false
      t.decimal :latitude,          :precision => 9, :scale => 6
      t.decimal :longitude,         :precision => 9, :scale => 6
      t.timestamps      
    end
  end
end
