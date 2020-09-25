class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.date :bithdate
      t.integer :gender

      t.timestamps
    end
  end
end
