class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.boolean :has_projector
      t.boolean :has_whiteboard_walls
      t.integer :max_guests
    end
  end
end
