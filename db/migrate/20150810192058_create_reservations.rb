class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :user_id
      t.references :room_id
      t.datetime :reservation_date
      t.timestamps null: false
      t.integer :num_guests
      t.integer :num_tables
      t.integer :num_chairs
      t.integer :num_adapters
      t.integer :num_whiteboards
      t.boolean :has_alcohol
    end
  end
end
