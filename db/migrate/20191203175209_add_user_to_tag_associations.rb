class AddUserToTagAssociations < ActiveRecord::Migration[5.1]
  def change
    add_reference :tag_associations, :user, foreign_key: true
  end
end
