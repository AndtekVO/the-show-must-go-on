class CreateInteractions < ActiveRecord::Migration[5.1]
  def change
    create_table :interactions do |t|
      t.references :session, foreign_key: true
      t.string :word
      t.integer :source

      t.timestamps
    end
  end
end
