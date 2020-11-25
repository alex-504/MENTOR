class AddMentorToCertifications < ActiveRecord::Migration[6.0]
  def change
    add_reference :certifications, :mentor, null: false, foreign_key: true
  end
end
