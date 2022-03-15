class AddProfessorReferenceToPosts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :posts, :professors
    add_index :posts, :professor_id
    change_column_null :posts, :professor_id, false
  end
end
