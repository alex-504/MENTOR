class CreateMentors < ActiveRecord::Migration[6.0]
  def change
    create_table :mentors do |t|
      t.text :description
      t.integer :price
      t.string :availability
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
