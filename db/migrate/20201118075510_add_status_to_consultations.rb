class AddStatusToConsultations < ActiveRecord::Migration[6.0]
  def change
    add_column :consultations, :status, :string, default: "Pending"
  end
end
