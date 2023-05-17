class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :image
      t.string :video
      t.text :description

      t.timestamps
    end
  end
end
