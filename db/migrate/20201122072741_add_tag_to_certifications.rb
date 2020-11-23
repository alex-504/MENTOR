class AddTagToCertifications < ActiveRecord::Migration[6.0]
  def change
    add_reference :certifications, :tag, null: false, foreign_key: true
  end
end
