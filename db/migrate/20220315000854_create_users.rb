class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.string :graduation_year
      t.string :program
      t.string :email

      t.timestamps
    end
  end
end
