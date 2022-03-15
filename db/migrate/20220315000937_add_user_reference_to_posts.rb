class AddUserReferenceToPosts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :posts, :users, column: :poster_id
    add_index :posts, :poster_id
    change_column_null :posts, :poster_id, false
  end
end
