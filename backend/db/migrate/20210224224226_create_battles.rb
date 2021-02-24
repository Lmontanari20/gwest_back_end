class CreateBattles < ActiveRecord::Migration[6.1]
  def change
    create_table :battles do |t|
      t.string :ai_name
      t.boolean :win
      t.string :round1
      t.string :round2
      t.string :round3
      t.references :user

      t.timestamps
    end
  end
end
