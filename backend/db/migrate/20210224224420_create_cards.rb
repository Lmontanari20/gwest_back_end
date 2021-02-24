class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :attack
      t.string :class
      t.string :special

      t.timestamps
    end
  end
end
