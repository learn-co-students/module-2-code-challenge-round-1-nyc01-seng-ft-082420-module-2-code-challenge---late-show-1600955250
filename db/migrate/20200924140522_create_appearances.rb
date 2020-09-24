class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.integer :rating
      t.belongs_to :Guest, foreign_key: true
      t.belongs_to :Episode, foreign_key: true

      t.timestamps
    end
  end
end
