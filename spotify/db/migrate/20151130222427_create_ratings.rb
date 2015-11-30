class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.text :comment
      t.integer :review
      t.references :song

      t.timestamps
    end
    add_index :ratings, :song_id
  end
end
