class AddSessionReferenceToBookmarks < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :bookmarks, :sessions
    add_index :bookmarks, :session_id
    change_column_null :bookmarks, :session_id, false
  end
end
