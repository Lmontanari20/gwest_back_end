class CreateUserCards < ActiveRecord::Migration[6.1]
  def change
    create_table :user_cards do |t|
      t.references :user
      t.references :card

      t.timestamps
    end
  end
end
