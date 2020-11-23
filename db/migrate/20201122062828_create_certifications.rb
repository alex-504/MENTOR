class CreateCertifications < ActiveRecord::Migration[6.0]
  def change
    create_table :certifications do |t|
      t.text :tag
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
