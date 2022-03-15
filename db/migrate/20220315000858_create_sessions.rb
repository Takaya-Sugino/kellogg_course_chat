class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.integer :course_id
      t.integer :professor_id

      t.timestamps
    end
  end
end
