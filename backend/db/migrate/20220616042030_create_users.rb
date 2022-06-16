class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :id
      t.string :name, null: false
      t.string :email, null: false
      t.string :password
      t.integer :highest_lesson_completed

      t.timestamps
    end
  end
end
