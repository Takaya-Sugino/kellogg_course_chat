class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :bio
      t.string :url

      t.timestamps
    end
  end
end
