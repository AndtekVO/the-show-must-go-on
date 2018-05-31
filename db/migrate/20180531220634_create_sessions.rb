class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :place
      t.string :wallpaper
      t.text :custom_style
      t.date :event_date

      t.timestamps
    end
  end
end
