class CreateCats < ActiveRecord::Migration[7.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.string :status
      t.text :looking_for
      t.text :about_me
      t.text :hobbies

      t.timestamps
    end
  end
end
