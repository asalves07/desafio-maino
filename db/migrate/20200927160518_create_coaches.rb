class CreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
      t.string :name
      t.date :birthdate
      t.integer :gender

      t.timestamps
    end
  end
end
