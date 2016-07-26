class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :maxplayercount
      t.string :gametype
      t.string :description
      t.integer :released_in

      t.timestamps
    end
  end
end
