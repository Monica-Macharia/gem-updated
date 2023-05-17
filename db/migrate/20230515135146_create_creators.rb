class CreateCreators < ActiveRecord::Migration[7.0]
  def change
    create_table :creators do |t|
      t.string :name
      t.boolean :isAdmin
      t.belongs_to :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
