class CreateRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :relations do |t|
      t.references :follow, index: true
      t.references :followed, index: true

      t.timestamps null: false
    end
  add_index :relations, [:follow_id, :followed_id], unique: true
  end
end