class AddCourseReferenceToPosts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :posts, :courses
    add_index :posts, :course_id
    change_column_null :posts, :course_id, false
  end
end
