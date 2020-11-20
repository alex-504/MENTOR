class AddRoomNameToConsultations < ActiveRecord::Migration[6.0]
  def change
    add_column :consultations, :room_name, :string
  end
end
