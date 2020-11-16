class CreateMentorTags < ActiveRecord::Migration[6.0]
  def change
    create_table :mentor_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :mentor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
