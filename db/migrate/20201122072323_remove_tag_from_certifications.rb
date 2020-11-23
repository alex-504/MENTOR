class RemoveTagFromCertifications < ActiveRecord::Migration[6.0]
  def change
    remove_column :certifications, :tag, :text
  end
end
