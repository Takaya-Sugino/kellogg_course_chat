class AddProfessorReferenceToSessions < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :sessions, :professors
    add_index :sessions, :professor_id
    change_column_null :sessions, :professor_id, false
  end
end
