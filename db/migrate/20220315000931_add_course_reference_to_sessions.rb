class AddCourseReferenceToSessions < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :sessions, :courses
    add_index :sessions, :course_id
    change_column_null :sessions, :course_id, false
  end
end
