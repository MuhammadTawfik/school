class CreateClassRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :class_rooms do |t|
      t.string :title

      t.timestamps
    end
  end
end
