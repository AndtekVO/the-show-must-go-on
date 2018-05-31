class CreateMeanings < ActiveRecord::Migration[5.1]
  def change
    create_table :meanings do |t|
      t.references :interaction, foreign_key: true
      t.text :meaning
      t.string :creator

      t.timestamps
    end
  end
end
