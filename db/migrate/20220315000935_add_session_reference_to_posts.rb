class AddSessionReferenceToPosts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :posts, :sessions
    add_index :posts, :session_id
    change_column_null :posts, :session_id, false
  end
end
