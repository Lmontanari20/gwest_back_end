class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :attack
      t.string :cardClass
      t.string :special
      t.boolean :indeck, :null => false, :default => "false"
      t.timestamps
    end
  end
end
