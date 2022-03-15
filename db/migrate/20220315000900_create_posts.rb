class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :rating
      t.string :description
      t.integer :session_id
      t.integer :poster_id

      t.timestamps
    end
  end
end
