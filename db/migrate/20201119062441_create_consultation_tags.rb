class CreateConsultationTags < ActiveRecord::Migration[6.0]
  def change
    create_table :consultation_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :consultation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
