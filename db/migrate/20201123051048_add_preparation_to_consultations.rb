class AddPreparationToConsultations < ActiveRecord::Migration[6.0]
  def change
    add_column :consultations, :preparation, :text
  end
end
